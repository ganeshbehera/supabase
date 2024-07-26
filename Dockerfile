# Use an official Docker image as a parent image
FROM alpine:latest

# Install dependencies
RUN apk add --no-cache git docker-compose

# Set the working directory
WORKDIR /supabase/docker

# Copy the example environment file
RUN cp .env.example .env

# Pull the latest Docker images
RUN docker-compose pull

# Start the services
CMD ["docker-compose", "up", "-d"]