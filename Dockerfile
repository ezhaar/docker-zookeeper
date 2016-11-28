FROM centos
MAINTAINER Izhar ul Hassan "ezhaar@gmail.com"

USER root

RUN yum update -y
RUN yum install -y java-1.8.0-openjdk-headless.x86_64
RUN yum clean all
RUN curl -o zookeeper-3.4.9.tar.gz http://apache.mirrors.spacedump.net/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz
RUN tar -xzf zookeeper-3.4.9.tar.gz 
RUN rm zookeeper-3.4.9.tar.gz
EXPOSE 2181
ENV ZOOKEEPER_HOME /zookeeper-3.4.9
ENV PATH $PATH:$ZOOKEEPER_HOME/bin
WORKDIR /
RUN cp /zookeeper-3.4.9/conf/zoo_sample.cfg /zookeeper-3.4.9/conf/zoo.cfg
CMD ["zkServer.sh", "start-foreground"]

