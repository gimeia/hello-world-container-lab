# Basic hello world containerization lab

- To build jar

```sh
mvn install -DskipTests=true
```

## Commands to run (you can substitute docker for podman)

```sh
$ git clone https://github.com/gimeia/hello-world-container-lab.git

$ cd spring-test
$ vim Dockerfile

$ docker build -t test/spring-test .

$ docker images

$ docker run test/spring-test

$ crtl-c
# if this does not work open new terminal get the Container ID and use it to stop 

$ docker ps    # list running containers. Copy container id

$ docker stop <container iD>

# to prove that container is running with its own Java dependency
# check java version on your machin
$ java -version
# if none exist, this proves it otherwise compare with version container is running
# Opening a terminal session into the running container and run bash using the docker exec command as follows;

$ docker exec -it [CONTAINER ID] /bin/bash
bash-4.4$ java -version

# Externalizing configuration, use different Message

$ docker run -e MESSAGE_WELCOME="Hello, world DEV" test/spring-test

```








