FROM tomcat:9
RUN chmod -R 777 /usr/local/tomcat/webapps
COPY server/apache-tomcat-9.0.75/webapps/gameoflife.war /usr/local/tomcat/webapps
RUN cd /usr/local/tomcat/bin && ./startup.sh
EXPOSE 8080
