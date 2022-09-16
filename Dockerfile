FROM maven:amazoncorretto AS stage1
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean install

FROM openjdk:9
COPY --from=stage1 /usr/src/app/target/gs-maven-0.1.0.jar /usr/app/gs-maven-0.1.0.jar
ENTRYPOINT ["java","-jar","/usr/app/gs-maven-0.1.0.jar"]
