FROM maven:3.6.1-jdk-8-alpine
WORKDIR '/app'
COPY . .
RUN mvn clean package spring-boot:repackage
# RUN cd /app/target
EXPOSE 5000
# ARG JAR_FILE=app/target/*.jar
# COPY ${JAR_FILE} app.jar
RUN cd /app/target
ENTRYPOINT ["java", "-jar", "/demo-SNAPSHOT.jar"]
