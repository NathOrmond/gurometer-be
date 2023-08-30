#!/bin/bash

function build_docker_image () {
    echo 'Attempting docker build for ' +  $1
    docker build -t $1 .
}

function deploy_docker_image () {
    echo 'Attempting to run docker image ' + $1 + 'on port ' + $2
    docker run -p80:$1 $2
}

container_name=dtg/gurometer-be
build_docker_image $container_name
