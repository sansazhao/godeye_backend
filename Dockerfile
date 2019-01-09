FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD ./target/godeye-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8081
RUN sh -c 'touch /app.jar'
CMD ["java","-jar","/app.jar"]