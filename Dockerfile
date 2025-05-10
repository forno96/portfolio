# Use Node.js as the base image with specific version for better reproducibility
FROM node:22-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY my-portfolio/package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application
COPY my-portfolio/ ./

# Build the application
RUN npm run build
RUN npm prune --production

# Production stage
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy everything from the build stage
COPY --from=builder /app/build build/
COPY --from=builder /app/node_modules node_modules/

# Create a non-root user and switch to it for better security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app
USER appuser

# Expose the port the app runs on
EXPOSE 3000
ENV NODE_ENV=production

# Health check to ensure the application is running
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/ || exit 1

# Command to run the application
CMD [ "node", "build" ]
