FROM maven:3.6.1-jdk-8-alpine
WORKDIR app
COPY . .
RUN mvn test
# RUN mvn install
# ARG JAR_FILE=app/target/*.jar
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]