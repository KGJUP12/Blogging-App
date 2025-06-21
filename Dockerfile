FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

# Copy JAR file downloaded from GitHub Actions artifact
# The file is downloaded into ./app/ by the download-artifact step
COPY app/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
