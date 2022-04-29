#!/bin/bash
  
printf "$(basename $0): Checking that runestone server is ready...\n"

for (( i = 60; i > 0 ; i-- )) do
  health=$(docker logs runestoneserver_runestone_1 2>&1 | grep -o "\[INFO\] Application startup complete\." | uniq)
  if [[ $health == "[INFO] Application startup complete." ]]; then
    printf "$(basename $0): Runestone server is ready.\n"
    exit 0
  fi
  sleep 10
  printf "$(basename $0): Runestone server is not yet ready... $i attempts remaining.\n"
done

>&2 printf "$(basename $0): Runestone server was not ready in time.\n"

exit 1
