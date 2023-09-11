FROM maven:3.8.3-openjdk-17 AS build
COPY pom.xml /app/pom.xml
COPY src /app/src
RUN mvn -f /app/pom.xml clean package

FROM maven:3.8.3-openjdk-17
COPY --from=build /app/target/gurometer-0.1.jar /usr/local/lib/gurometer.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/gurometer.jar"]