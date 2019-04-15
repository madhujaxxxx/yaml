# docker-compose to hello-world

The simplest "docker-compose.yml" to "Hello World" as simple as "docker run hello-world".

```yaml
version: "3"
services:
  hello:
    image: hello-world:latest
```

- Download: https://keinos.github.io/hello-docker-compose/docker-compose.yml
- Source: https://github.com/KEINOS/hello-docker-compose/blob/master/docker-compose.yml

## Sample usage

```shellsession
$ mkdir hello-world && cd $_
$ curl -O https://keinos.github.io/hello-docker-compose/docker-compose.yml
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    62  100    62    0     0    227      0 --:--:-- --:--:-- --:--:--   226
$ ls
docker-compose.yml
$ cat docker-compose.yml
version: "3"
services:
  hello:
    image: hello-world:latest
$ docker-compose up
Creating network "core_default" with the default driver
Creating core_hello_1 ... done
Attaching to core_hello_1
hello_1  | 
hello_1  | Hello from Docker!
hello_1  | This message shows that your installation appears to be working correctly.
hello_1  | 
hello_1  | To generate this message, Docker took the following steps:
hello_1  |  1. The Docker client contacted the Docker daemon.
hello_1  |  2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
hello_1  |     (amd64)
hello_1  |  3. The Docker daemon created a new container from that image which runs the
hello_1  |     executable that produces the output you are currently reading.
hello_1  |  4. The Docker daemon streamed that output to the Docker client, which sent it
hello_1  |     to your terminal.
hello_1  | 
hello_1  | To try something more ambitious, you can run an Ubuntu container with:
hello_1  |  $ docker run -it ubuntu bash
hello_1  | 
hello_1  | Share images, automate workflows, and more with a free Docker ID:
hello_1  |  https://hub.docker.com/
hello_1  | 
hello_1  | For more examples and ideas, visit:
hello_1  |  https://docs.docker.com/get-started/
hello_1  | 
core_hello_1 exited with code 0
$ echo $?
0 
```
