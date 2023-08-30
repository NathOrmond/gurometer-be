#!/bin/bash

echo 'Attempting to run integration tests'
./mavenw clean test --tests '*IntTests*'
