FROM tomcat:9.0-jdk11

RUN rm -rf /usr/local/tomcat/webapps/*

COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
