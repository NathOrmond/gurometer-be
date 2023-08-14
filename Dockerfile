FROM maven:3.6.0-jdk-11-slim AS build
COPY pom.xml /app/pom.xml
COPY src /app/src
RUN mvn -f /app/pom.xml clean package

FROM openjdk:11-jre-slim
COPY --from=build /app/target/gurometer-0.1.jar /usr/local/lib/gurometer.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/gurometer.jar"]