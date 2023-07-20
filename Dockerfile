FROM openjdk:8-jre-slim
# copy sentinel jar
COPY target/sentinel-dashboard.jar /
ENV JAVA_OPTS '-Dserver.port=8080 -Dnacos.serverAddr=192.168.10.10:8848'
RUN chmod -R +x /sentinel-dashboard.jar
EXPOSE 8080
CMD java ${JAVA_OPTS} -jar /sentinel-dashboard.jar