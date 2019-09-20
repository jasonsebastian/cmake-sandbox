# Static library

This project compiles shared library for Linux, using Docker to containerize the build process.

To check whether Docker is running:

```bash
docker ps
```

To run this project, run the following commands:

```bash
docker build -t sandbox-linux .
docker run -it sandbox-linux /bin/bash
```

To remove all exited containers, run the following commands:

```bash
docker rm $(docker ps -a -f status=exited -q)
```
