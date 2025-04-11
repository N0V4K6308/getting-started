FROM node:18-alpine
# Install dependencies
RUN apk add --no-cache python3 g++ make 
# Set the working directory
WORKDIR /app
# Copy application files
COPY . .
# Install dependencies with Yarn
RUN NODE_ENV=production yarn install
# Expose port 3000
EXPOSE 3000
# Set the command to run the application
CMD ["node", "src/index.js"]


