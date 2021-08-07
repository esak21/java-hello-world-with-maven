FROM tomcat:9-jdk16-openjdk-slim
MAINTAINER ESAK
ADD target/*.war /usr/local/tomcat/webapps/
EXPOSE 8086
CMD ["catalina.sh", "run"]