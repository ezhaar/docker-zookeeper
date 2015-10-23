FROM centos
MAINTAINER Izhar ul Hassan "ezhaar@gmail.com"

USER root

RUN yum update -y
RUN yum install -y java-1.7.0-openjdk-headless.x86_64
RUN curl -o zookeeper-3.4.6.tar.gz http://apache.mirrors.spacedump.net/zookeeper/current/zookeeper-3.4.6.tar.gz
RUN tar -xzf zookeeper-3.4.6.tar.gz 
RUN rm zookeeper-3.4.6.tar.gz
EXPOSE 2181
WORKDIR /
RUN cp /zookeeper-3.4.6/conf/zoo_sample.cfg /zookeeper-3.4.6/conf/zoo.cfg
CMD ["/zookeeper-3.4.6/bin/zkServer.sh", "start-foreground"]

