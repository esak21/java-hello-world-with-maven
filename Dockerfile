FROM tomcat:9-alpha
MAINTAINER ESAK
ADD target/*.war /usr/local/tomcat/webapps/
RUN  VALUE=`cat conf/server.xml` && echo "${value//8080/8050}" >| conf/server.xml
CMD ["catalina.sh", "run"]