FROM openjdk:11.0.10-jre-slim


# This modifies the JVM's DNS cache TTL, changing it from the default of INFINITY to 60
RUN sed -i 's/#networkaddress.cache.ttl=.*/networkaddress.cache.ttl=60/g' $(find / -iname java.security)
RUN sed -i 's/networkaddress.cache.negative.ttl=.*/networkaddress.cache.negative.ttl=0/g' $(find / -iname java.security)

COPY demo-0.0.1-SNAPSHOT.jar /application.jar

ENTRYPOINT ["java", "-jar", "application.jar"]
