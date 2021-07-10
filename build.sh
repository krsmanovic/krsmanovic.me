#!/bin/bash

DATE=$(date -I|sed 's/-//g')

echo
echo "Building docker containers and updating tags specified in the compose file..."
echo

docker build -t nginx-krsmanovic:$DATE ./docker-nginx
if [ $? = 0 ]
then
    echo
    echo "Nginx container built successfully."
    sed -i "s/\(nginx-krsmanovic:\).*/\1$DATE/" docker-compose.yml
    if [ $? = 0 ]
        then
        echo "Nginx docker compose tag updated successfully."
        echo
    else
        echo "Nginx docker compose tag update failed."
        echo
        exit 1
    fi
else
    echo
    echo "Building nginx container failed."
    echo
    exit 1
fi

docker build -t website-krsmanovic:$DATE ./docker-website
if [ $? = 0 ]
then
    echo
    echo "Website container built successfully."
    sed -i "s/\(website-krsmanovic:\).*/\1$DATE/" docker-compose.yml
    if [ $? = 0 ]
        then
        echo "Website docker compose tag updated successfully."
        echo
    else
        echo "Website docker compose tag update failed."
        echo
        exit 1
    fi
else
    echo
    echo "Building website container failed."
    echo
    exit 1
fi
