FROM alpine:3.18.3
RUN apk add openjdk11
WORKDIR /tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz .
RUN tar xf apache-tomcat-9.0.78.tar.gz && rm apache-tomcat-9.0.78.tar.gz
EXPOSE 8080
CMD ["/tomcat/apache-tomcat-9.0.78/bin/catalina.sh","run"]
 
