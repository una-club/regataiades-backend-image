FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD src/regsataiades-backend-service.jar app.jar
EXPOSE 8990
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar", "--spring.data.mongodb.uri=mongodb://mongo:27017"]