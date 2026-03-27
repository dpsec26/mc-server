FROM eclipse-temurin:25-jre

WORKDIR /mc

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN curl -o server.jar https://piston-data.mojang.com/v1/objects/3872a7f07a1a595e651aef8b058dfc2bb3772f46/server.jar

COPY server.properties /config/server.properties

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 25565/tcp 25565/udp

CMD ["/start.sh"]