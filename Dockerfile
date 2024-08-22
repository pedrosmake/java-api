FROM maven:3.9.8-amazoncorretto-21
WORKDIR /code
COPY . /code
RUN mvn clean install -DskipTests=true
EXPOSE 8080
ENV DB_USERNAME=$DB_USERNAME
ENV DB_PASSWORD=$DB_PASSWORD
ENV DB_HOST=$DB_HOST
ENV DB_NAME=$DB_NAME
CMD ["java","-jar", "/code/target/JavaWebService-1.0-SNAPSHOT.jar", "server", "/code/config.yml"]
