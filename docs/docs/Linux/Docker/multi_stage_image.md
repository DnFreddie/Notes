---
date: "2024-09-03T23:06:34+02:00"
draft: false
title: Multi-stage docker images
---

*U can minifie the size of the app by reducing the conatiner to a
certain stage*

``` dockerfile
# Stage 1: Build Environment
FROM builder-image AS build-stage 
# Install build tools (e.g., Maven, Gradle)
# Copy source code
# Build commands (e.g., compile, package)

# Stage 2: Runtime environment
FROM runtime-image AS final #this is ussualy always called final  
#  Copy application artifacts from the build stage (e.g., JAR file)
COPY --from: build-stage /path/in/build/stage /path/to/place/in/final/stage
# Define runtime configuration (e.g., CMD, ENTRYPOINT)
```

### Targeting build stage

``` bash
docker build --target build -t my-app:build .
```

------------------------------------------------------------------------

-   [docker](/Linux/Docker/docker)
