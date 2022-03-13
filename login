#!/bin/bash

image_name="acos_image:1.0"
container_name="acos_container"

docker image inspect $image_name &> /dev/null \
    || docker build -t $image_name .

docker inspect $container_name &> /dev/null \
    || docker run \
        -d \
        --name $container_name \
        -it \
        -v "$(pwd)"/container:/acos $image_name &> /dev/null\
    && docker start $container_name &> /dev/null\

docker exec -w /acos/ -it $container_name bash
