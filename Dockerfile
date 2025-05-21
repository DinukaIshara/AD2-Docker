FROM openjdk:17-jdk-slim

# working directory in the container
WORKDIR /app

# Copy compiled JAR file into the container at /app
# COPY target/Docker-0.0.1-SNAPSHOT.jar
COPY target/*.jar app.jar

# port
EXPOSE 8080

# run the JAR file
# java -jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]