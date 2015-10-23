## Zookeeper Server Image

### Build the Container

```bash

docker build -t ezhaar/zkserver

```

### Start Zookeeper Server

```bash

docker run -d --name zkserver ezhaar/zkserver

# get the ip address of zkserver
docker inspect zkserver | grep -i ip

```

Zookeeper clients can not connect the **ip address** of zkserver

```bash

zkCli.sh -server <IP_ADD>:2181

```





