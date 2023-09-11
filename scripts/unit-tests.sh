#!/bin/bash 

echo 'Attempting to run unit tests'
mvn clean test --tests '*UnitTests*'
