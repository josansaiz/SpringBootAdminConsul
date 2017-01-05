FROM openjdk:8

MAINTAINER jasaiz

ENV SERVER_PORT 8080
ENV CONFIG_ENABLED false
ENV CONSUL_HOST localhost
ENV CONSUL_PORT 8500
ENV ARTIFACT_VERSION 0.0.1

ADD ./target/SpringBootAdminConsul-${ARTIFACT_VERSION}.jar /SpringBootAdminConsul.jar

WORKDIR /

CMD echo "server.port=$SERVER_PORT \n\
spring.cloud.config.enabled=$CONFIG_ENABLED \n\
spring.cloud.consul.host=$CONSUL_HOST\n\
spring.cloud.consul.port=$CONSUL_PORT \n\
"; \
echo "server.port=$SERVER_PORT \n\
spring.cloud.config.enabled=$CONFIG_ENABLED \n\
spring.cloud.consul.host=$CONSUL_HOST\n\
spring.cloud.consul.port=$CONSUL_PORT \n\
" > /application.properties; \
java -jar SpringBootAdminConsul.jar