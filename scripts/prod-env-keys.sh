#!/bin/bash

export TEST_ENV_KEY=$(TEST_ENV_KEY)
echo $TEST_ENV_KEY


# echo $(MONGODB_CONNSTRING)

if [[ -z "${TEST_ENV_KEY}" ]]; then
  echo "WARNING: Some env key values are missing because TEST_ENV_KEY is undefined"
  echo "Tests will probably fail!"
else
  echo "Env Keys are Set: [ value: ${TEST_ENV_KEY} ]" 
fi