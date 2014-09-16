FROM	ubuntu
MAINTAINER hzsunshx@corp.netease.com

ADD start.sh /
RUN apt-get update && apt-get install -y python mongodb

EXPOSE 4000
ENTRYPOINT ["/start.sh"]
