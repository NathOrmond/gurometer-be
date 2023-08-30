#!/bin/bash 

echo 'Attempting to run unit tests'
./mavenw clean test --tests '*UnitTests*'
