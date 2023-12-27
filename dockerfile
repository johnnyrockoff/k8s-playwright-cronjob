# Base image
FROM node:14

# Get the latest version of Playwright
FROM mcr.microsoft.com/playwright:v1.40.0-jammy

# Set the working directory
WORKDIR /app

COPY . .

# Set the entry point for the container
CMD ["npx", "playwright", "test"]