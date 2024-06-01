FROM ubuntu:22.04

LABEL maintainer="Omar IZEM <contact@izem.dev>"


ARG WWWGROUP=1000
ARG WWWUSER=1000
ARG WORKSPACE=/workspace

# Set environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV NODE_VERSION=20.x
ENV NODE_ENV=development
ENV TZ=UTC

# Set the working directory inside the container
ENV WORKSPACE=$WORKSPACE
RUN mkdir -p $WORKSPACE
WORKDIR $WORKSPACE

# Set up the timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install base packages and development tools
RUN apt-get update && apt-get install -y curl zip unzip git vim nano ffmpeg && rm -rf /var/lib/apt/lists/*

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_$NODE_VERSION | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn --force && \
    npm cache clean --force

# Install Typescript tools
RUN npm install -g typescript ts-node

# Adding a user and group for running the application (optional but recommended)
RUN groupadd --force -g $WWWGROUP nodeuser && \
    useradd -ms /bin/bash --no-user-group -g $WWWGROUP -u $WWWUSER nodeuser && \
    chown -R nodeuser:nodeuser $WORKSPACE && \
    chmod -R 755 $WORKSPACE

# Copy over any needed configuration files or scripts
COPY .devcontainer/start-container.sh /usr/local/bin/start-container.sh
RUN chmod +x /usr/local/bin/start-container.sh

# Set the user (avoid running as root if not necessary)
USER nodeuser

# Set the container's entry point to the start script
ENTRYPOINT ["start-container.sh"]