#!/bin/bash

echo 'Attempting to run integration tests'
mvn clean test --tests '*IntTests*'
