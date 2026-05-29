# Podman Container Management

## What This Does
This project demonstrates container lifecycle management using Podman on CentOS Stream 9. It covers running containers, managing images, inspecting containers, viewing logs, copying files into containers, working with volumes, creating container networks, and validating runtime behavior. The workflow reflects core container operations used in Linux, DevOps, Platform Engineering, and cloud-native environments.

## Architecture
```text
Host: CentOS Stream 9
        |
        v
Podman Rootless Runtime
        |
        +-- my-nginx container
        |     +-- Host port 8080 -> Container port 80
        |
        +-- python-server container
        |     +-- Host port 8081 -> Container port 8000
        |
        +-- data-container
        |     +-- Named volume: my-data -> /data
        |
        +-- my-network
              +-- web1
              +-- web2
