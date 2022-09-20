# Basic hello world containerization lab


```sh
# to build jar
mvn install -DskipTests=true

# to run application
./mvnw spring-boot:run

# check for Greeting
http://localhost:8080/
```

## Commands to run (you can substitute docker for podman)

```sh
$ git clone https://github.com/gimeia/hello-world-container-lab.git

$ cd spring-test
$ vim Dockerfile

$ docker build -t test/spring-test .

# OR if you ran mvn build locally
$ docker build -f Dockerfile.simple -t test/spring-test . 

$ docker images

$ docker run test/spring-test

# OR to see greeting on localhost:8080
$ docker run -p 8080/8080 test/spring-test 

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

# Deploying to Openshift/kubernetes - replace oc with kubectl
$ oc apply -f yaml/mypod.yaml

# see streaming logs
$ oc logs -f mypod

```








