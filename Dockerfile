FROM node:20-alpine

WORKDIR /app

RUN npm install -g 9router --prefer-offline

RUN mkdir -p /root/.9router

# Required env vars for headless/server deployment
ENV PORT=8080
ENV NODE_ENV=production
ENV JWT_SECRET=changeme_random_secret
ENV INITIAL_PASSWORD=God@111983
ENV DATA_DIR=/root/.9router

EXPOSE 8080

# Add --skip-update to prevent update prompts
CMD ["9router", "--no-browser", "--port", "8080", "--skip-update"]
