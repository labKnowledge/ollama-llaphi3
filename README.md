# Ollama Image Docker Repository

This repository contains a Docker image that builds an Ollama image with preconfigured modules, including llama3 and phi3.

## Usage

### Pulling the Docker Image

You can pull the Docker image from Docker Hub using the following command:

```bash
docker pull labKnowledge/ollama-llaphi3
```

Replace `yourusername` with your Docker Hub username.

### Running the Docker Container

Once you have pulled the image, you can run a Docker container using the following command:

```bash
docker run -d --name ollama-llaphi3 labKnowledge/ollama-llaphi3
```

This command will run the Docker container in detached mode with the name `ollama-llaphi3`. You can replace `ollama-llaphi3` with your preferred name.

### Accessing the Llama Image

After running the container, you can access the ollama image and its preconfigured modules by accessing the container's shell:

```bash
docker exec -it ollama-llaphi3 /bin/bash
```

This command will open a shell inside the running container, allowing you to interact with the Llama image and its modules.

## Included Modules

The ollama-llaphi3 image includes the following preconfigured modules:

- **llama3**: This module provides rich functionality as well as  **phi3**

## Additional Information

For more information on using Docker, please refer to the [Docker documentation](https://docs.docker.com/).

## Contributing

If you encounter any issues or would like to contribute to this repository, please feel free to [open an issue](https://github.com/labKnowledge/ollama-llaphi3/issues) or submit a pull request.
