FROM tomcat:9.0-jdk16
MAINTAINER ESAK
COPY target/*.jar target/*.war
ADD target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]