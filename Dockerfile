FROM maven:3.9.4-eclipse-temurin-11 AS build 
ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME 
COPY . .
RUN mvn clean package -DskipTests



FROM adoptopenjdk/openjdk11
ENV APP_HOME /usr/src/app 
WORKDIR $APP_HOME
COPY --from=build $APP_HOME/target/*.jar $APP_HOME/app.jar
EXPOSE 8080
CMD ["java" , "-jar" , "app.jar"]