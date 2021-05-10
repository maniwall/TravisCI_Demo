FROM maven:3.6.1-jdk-8-alpine
WORKDIR '/app'
COPY . .
RUN mvn clean package spring-boot:repackage
# RUN cd /app/target
EXPOSE 8080
# ARG JAR_FILE=app/target/*.jar
# COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app/target/demo-SNAPSHOT.jar"]
