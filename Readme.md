# ZenContainer Template

This repository serves as a template for setting up a robust development environment using Docker and Visual Studio Code's Dev Containers. It provides a seamless way to develop full-stack Javascript and TypeScript applications.

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Available Commands](#available-commands)
- [Customizing](#customizing)
- [License](#license)

## Features

- **Full-stack TypeScript**: Supports any Typescript framework (Nest.js, Angular ...).
- **Dockerized Environment**: Ensures consistency and isolation.
- **VS Code Dev Container**: Simplifies setup and configuration.
- **Pre-installed Tools**: Includes Node.js, Yarn, ts-node and typescript for now.
- **User Customization**: Easy to adjust user and group IDs, environment variables, and more.

## Prerequisites

Before using this template, ensure you have the following installed:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- [WSL 2 (Windows only)](https://docs.microsoft.com/en-us/windows/wsl/install)

## Getting Started

### 1. Use this template

Click the "Use this template" button on GitHub to create a new repository based on this template.

### 2. Clone your new repository

```bash
git clone https://github.com/your-username/your-banch-name.git
cd your-banch-name
```

### 3. Set up environment variables and configurations

Move to the docker-compose file and set the environment variables and the build arguments as needed.

### 4. Build and run the development container

Use the provided `run` script to manage Docker Compose services:

```bash
./run up
```

This script will build and start the Docker containers as defined in `.devcontainer/docker-compose.yml`.

## Usage

### Open in VS Code

To open the project in VS Code inside the development container:

```bash
./run open
```

This will run the './run up' first then open the project in VS Code using the Remote - Containers extension.

### Available Commands

The `run` script provides various commands to manage the development environment:

- `./run up`: Build and run Docker Compose services.
- `./run stop`: Stop running Docker Compose services.
- `./run clean`: Stop and remove everything related to Docker Compose (containers, images, volumes).
- `./run open`: Open the development container in VS Code.

## Customizing

### Dockerfile

You can customize the Dockerfile located at `.devcontainer/Dockerfile` to suit your specific needs, such as adding additional dependencies or changing the base image.

### VS Code Extensions

To customize the VS Code extensions, modify the `devcontainer.json` file located at `.devcontainer/devcontainer.json`. You can add or remove extensions based on your preferences.

## Issues and Feedback

If you encounter any compatibility issues with different operating systems, especially if you're not using macOS, or if you find any missing features or improvements that can be made, please open an issue on GitHub. Your feedback is highly appreciated and will help improve this template for everyone.

## License

This project is licensed under the Apache License 2.0.