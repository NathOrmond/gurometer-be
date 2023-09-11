#!/bin/bash

function build_docker_image () {
    echo 'Attempting docker build for ' +  $1
    docker build -t $1 .
}

container_name=dtg/gurometer-be
build_docker_image $container_name
