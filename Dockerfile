##### DEPENDENCIES
FROM --platform=linux/arm64 node:20-bookworm AS deps
RUN apt-get update && apt-get install -y openssl
WORKDIR /app

COPY prisma ./
COPY package.json package-lock.json ./
RUN npm ci

##### BUILDER
FROM --platform=linux/arm64 node:20-bookworm AS builder
ARG DATABASE_URL
ARG NEXT_PUBLIC_CLIENTVAR
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .

ENV NEXT_TELEMETRY_DISABLED 1
RUN SKIP_ENV_VALIDATION=1 npm run build

##### RUNNER
FROM --platform=linux/arm64 node:20-bookworm-slim AS runner
WORKDIR /app

ENV NODE_ENV production
ENV NEXT_TELEMETRY_DISABLED 1

COPY --from=builder /app/node_modules/.prisma ./node_modules/.prisma
COPY --from=builder /app/node_modules/@prisma ./node_modules/@prisma
COPY --from=builder /app/node_modules/.bin ./node_modules/.bin
COPY --from=builder /app/prisma ./prisma

COPY --from=builder /app/next.config.js ./
COPY --from=builder /app/public ./public
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/.next/standalone ./
COPY --from=builder /app/.next/static ./.next/static

EXPOSE 3001
ENV PORT 3001

CMD ["npm", "run", "start"]
