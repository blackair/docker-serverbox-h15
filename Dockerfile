FROM	mongo:2.6.4
MAINTAINER hzsunshx@corp.netease.com

RUN apt-get update && apt-get install -y python openssh-server
RUN apt-get install -y python-pip python-setuptools

# pymongo
RUN apt-get install -y build-essential python-dev
RUN easy_install pymongo

RUN mkdir /var/run/sshd
RUN echo 'root:fai' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

ADD start.sh /
ADD rpc_service.py /

#EXPOSE 22
#EXPOSE 4000 8000

CMD ["/start.sh"]
