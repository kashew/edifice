# Compile Stage Build
FROM node:12.18-alpine AS builder
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "tsconfig.json", "src", "./"]
RUN npm install && npm run build

# Production Stage Build
FROM node:12.18-alpine
ENV NODE_ENV=production
WORKDIR /usr/src/app
RUN mkdir dist
COPY --from=builder ["/usr/src/app/package.json", "./"]
COPY --from=builder ["/usr/src/app/dist", "./"]
RUN npm install --production --silent
EXPOSE 3000
CMD ["node", "app.js"]