# DOCKER MULTI STAGE BUILDS

One of the most challenging things about building images is keeping the image size down. The docker multi-stage builds are a way of organizing Dockerfile to minimize the size of the final docker image, container and ultimately improve the performance of the container. 

In a multi-stage build we will have multiple FROM instructions in a single Dockerfile and each FROM instruction begins a new stage. We can selectively copy artifacts from one stage to another.

Basically, instead of keeping all the unnecessary supported libraries, dependency files etc. using multi-stage builds we can discord all these components to make our application light and less vulnerable.
