# Build stage
FROM node:lts-alpine AS builder
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy application code
COPY . .

# Build the Next.js application
RUN npm run build

# Production stage
FROM node:18-alpine AS runner
WORKDIR /app

# Create a non-root user for security
RUN addgroup --system --gid 1001 nodejs && \
    adduser --system --uid 1001 nextjs

# Set environment variables
ENV NODE_ENV production
ENV PORT 3000

# Create directory for SQLite database with proper permissions
RUN mkdir -p /app/db && \
    chown -R nextjs:nodejs /app

# Copy built application from the builder stage
COPY --from=builder --chown=nextjs:nodejs /app/.next ./.next
COPY --from=builder --chown=nextjs:nodejs /app/node_modules ./node_modules
COPY --from=builder --chown=nextjs:nodejs /app/package.json ./package.json
COPY --from=builder --chown=nextjs:nodejs /app/public ./public

# If you have a next.config.js file:
COPY --from=builder --chown=nextjs:nodejs /app/next.config.js ./next.config.js

# Switch to the non-root user
USER nextjs

# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

# Volume for persistent SQLite data
VOLUME ["/app/db"]