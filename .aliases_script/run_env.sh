#!/bin/sh

env_file="$PWD/.env.$1"
shift

if [ -f "$env_file" ]
then
  dotenv -f $env_file $@
else
  echo "ERROR Can't find $env_file"
fi
