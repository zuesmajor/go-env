FROM centos:7

RUN mkdir /downloads
VOLUME /root/go-practice
RUN yum update -y
RUN yum install epel-release -y
RUN yum install python-pip wget which curl -y
RUN wget https://dl.google.com/go/go1.9.4.linux-amd64.tar.gz -P /downloads
RUN tar -xzf /downloads/go1.9.4.linux-amd64.tar.gz -C /downloads
RUN mv /downloads/go /usr/local
ENV GOROOT=/usr/local/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH
WORKDIR /root
