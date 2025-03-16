# Use Ubuntu 22.04 as the base image
FROM ubuntu:24.04

# Set noninteractive mode for apt
ENV DEBIAN_FRONTEND=noninteractive
ARG DEBIAN_FRONTEND=noninteractive

# Update and install basic dependencies
RUN apt-get update -y && apt-get install -y sudo && apt-get clean

# Copy the setup script
COPY setup.sh .
RUN chmod +x setup.sh

# Run the script
CMD ["./setup.sh"]
