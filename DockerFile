FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY app/*.jar $APP_HOME/app.jar   // in github actions we are uploading jar and downloading in docker stage in app/ folder thus updated this copy source path

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
