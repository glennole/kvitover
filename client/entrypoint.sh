#!/bin/bash
echo "Inserting env variables"
for file in ./app/js/*.js
do
  echo "env sub for $file"
  list="$(cat /config_app/env_variables| awk -F= '{print $1}')"
  echo "$list" | while read -r line; do
    export REPLACE="REPLACE_$line"
    export VALUE=$(eval "echo \"\$$line\"")
    # for debugging use (DO NOT ENABLE IN PRODUCTION):
    # echo "replacing ${REPLACE} with ${VALUE} in $file"
    sed -i "s~${REPLACE}~${VALUE}~g" $file
    unset REPLACE
    unset VALUE
  done
done