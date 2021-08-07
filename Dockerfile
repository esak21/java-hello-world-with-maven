FROM 9-jdk16-openjdk-slim
MAINTAINER ESAK
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]