FROM maven:3.6.1-jdk-8-alpine
WORKDIR '/app'
COPY . .
RUN mvn package
RUN cd /app/target
EXPOSE 8080
# ARG JAR_FILE=app/target/*.jar
# COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","travisCI_Demo 0.0.1-SNAPSHOT.jar"]