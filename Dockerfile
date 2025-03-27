##### DEPENDENCIES

FROM --platform=linux/arm64 arm64v8/node:20-alpine AS deps
RUN apk add --no-cache libc6-compat openssl libssl.so.1.1
WORKDIR /app

# Install Prisma Client - remove if not using Prisma

COPY prisma ./

# Install dependencies based on the preferred package manager

COPY package.json package-lock.json ./

RUN npm ci

##### BUILDER

FROM --platform=linux/arm64 arm64v8/node:20-alpine AS builder
ARG DATABASE_URL
ARG NEXT_PUBLIC_CLIENTVAR
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .

ENV NEXT_TELEMETRY_DISABLED 1

# Generate Prisma client with the correct binary targets
RUN SKIP_ENV_VALIDATION=1 npm run build

##### RUNNER

FROM --platform=linux/arm64 arm64v8/node:20-alpine AS runner
WORKDIR /app

ENV NODE_ENV production

ENV NEXT_TELEMETRY_DISABLED 1

COPY --from=builder /app/next.config.js ./
COPY --from=builder /app/public ./public
COPY --from=builder /app/package.json ./package.json

COPY --from=builder /app/.next/standalone ./
COPY --from=builder /app/.next/static ./.next/static

COPY --from=deps /app/db.sqlite ./db.sqlite

EXPOSE 3000
ENV PORT 3000

CMD ["server.js"]