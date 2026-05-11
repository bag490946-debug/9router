# Base image - Node.js 20 LTS (Alpine = small size)
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install 9router globally
RUN npm install -g 9router --prefer-offline

# Create data directory for 9router config persistence
RUN mkdir -p /root/.9router

# Set environment variables
ENV PORT=8080
ENV NODE_ENV=production

# Expose port (Back4app requires 8080)
EXPOSE 8080

# Start 9router without opening browser, on port 8080
CMD ["9router", "--no-browser", "--port", "8080"]
