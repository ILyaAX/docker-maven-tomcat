# docker-maven-tomcat

Package the Java application in a Docker container. The assembly process must also be carried out in a container.

Build image:

docker build -t boxfuse https://github.com/ILyaAX/docker-maven-tomcat.git#main:

Starting the container:

docker run --rm -d --name boxfuse -p 80:8080 boxfuse





Ubuntu 20.04-based build:

docker build -t boxfuse -f Dockerfile_ubuntu https://github.com/ILyaAX/docker-maven-tomcat.git#main:

Starting a container is no different




http://YOUR_IP/hello-1.0/