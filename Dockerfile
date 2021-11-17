FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY ./java_projects/photography-serviceA/mvn/ .mvn

COPY ./java_projects/photography-serviceA/mvnw ./java_projects/photography-serviceA/pom.xml ./

RUN ./mvnw dependency:go-offline

COPY ./java_projects/photography-serviceA/src ./src

CMD ["./mvnw","spring-boot:run"]