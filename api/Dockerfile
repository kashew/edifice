# Compile Stage Build
FROM node:12.18-alpine AS builder
WORKDIR /usr/src
RUN mkdir db
COPY . .
RUN npm install && npm run build

# Production Stage Build
FROM node:12.18-alpine
ENV NODE_ENV=production
WORKDIR /usr/src
RUN apk --update add postgresql-client
RUN mkdir src
RUN mkdir db
COPY --from=builder ["/usr/src/.sequelizerc", "/usr/src/package.json", "./"]
COPY --from=builder ["/usr/src/db", "./db/"]
COPY --from=builder ["/usr/src/dist", "./src/"]
RUN npm install --production --silent
EXPOSE 3000