FROM gradle:jdk10-slim as builder
ENV GRADLE_OPTS="$GRADLE_OPTS -Dorg.gradle.daemon=false"
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle clean build -x test

FROM openjdk:10-jdk-slim
EXPOSE 80
COPY --from=builder /home/gradle/src/build/libs/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
