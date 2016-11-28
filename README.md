## Zookeeper Server Image

### Build the Container

```bash
git clone git://github.com/ezhaar/docker-zookeeper
cd docker-zookeeper
docker build . -t ezhaar/zkserver

```

### Start Zookeeper Server

```bash

docker run -d --name zkserver ezhaar/zkserver

# get the ip address of zkserver
docker inspect zkserver | grep -i ip

```

Zookeeper clients can now connect to the **ip address** of zkserver

```bash

zkCli.sh -server <IP_ADD>:2181

```

### Testing from same container

```bash
# connect an interactive shell on the running container
docker exec -it zkserver bash

# connect to zookeper
/zookeeper-3.4.9/bin/zkCli.sh 





