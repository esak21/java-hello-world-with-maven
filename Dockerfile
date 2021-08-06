FROM tomcat:9.0-jdk16
MAINTAINER ESAK
ADD /var/lib/jenkins/workspace/Project-sonar/target/*.war /usr/local/tomcat/webapps/
RUN  VALUE=`cat conf/server.xml` && echo "${value//8080/8050}" >| conf/server.xml
CMD ["catalina.sh", "run"]