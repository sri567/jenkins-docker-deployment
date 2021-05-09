FROM centos
MAINTAINER demo <demo@gmail.com>
ADD https://apache.osuosl.org/tomcat/tomcat-8/v8.5.65/bin/apache-tomcat-8.5.65.tar.gz /opt/
RUN tar -xvf /opt/apache-tomcat-8.5.65.tar.gz/ -C /opt/
RUN mv /opt/apache-tomcat-8.5.65 /opt/tomcat
EXPOSE 8080
COPY target/demoart.war /opt/tomcat/webapps/
CMD /opt/tomcat/bin/startup.sh && while true; do sleep 1000 ; done

