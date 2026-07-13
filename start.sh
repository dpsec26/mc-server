#!/bin/bash

if [ ! -f /mc/server.properties ]; then
    cp /config/server.properties /mc/server.properties
fi

if [ ! -f /mc/eula.txt ]; then
    echo "eula=true" > /mc/eula.txt
fi

java -Xms${MC_SERVER_JAVA_MIN:-512M} -Xmx${MC_SERVER_JAVA_MAX:-1G} -jar /mc/server.jar nogui