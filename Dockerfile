FROM airdock/oracle-jdk:1.8

ENV DOCKERIZE_VERSION v0.2.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN mkdir /app
WORKDIR /app
COPY build/libs/hd-config-server.jar /app
VOLUME /app/config
ENTRYPOINT ["dockerize", "-timeout", "5m", "-wait", "tcp://eureka-server:8761", "-wait", "tcp://rabbitmq:5672", "java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/hd-config-server.jar", "--spring.profiles.active=docker"]
EXPOSE 8100