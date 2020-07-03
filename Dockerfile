FROM tomcat
LABEL maintainer "suresh"
WORKDIR /opt
RUN apt-get update -y
RUN apt-get upgrade -y
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
VOLUME tomcat:/usr/local/tomcat/webapps
EXPOSE 8080
