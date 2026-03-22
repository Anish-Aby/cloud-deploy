FROM maven:3.9.8-eclipse-temurin-21
WORKDIR /app
COPY target/cloud-deploy-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]