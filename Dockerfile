FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=tutorial-server/target/tutorial-app.war
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]