#!/usr/bin/env bash

case "$1" in
  start)
    docker-compose up -d
  ;;
  stop)
    docker-compose stop
  ;;
  clean)
    docker-compose stop
    docker rm -f dooritydockerdemo_keycloak_1 dooritydockerdemo_app1_1 dooritydockerdemo_app2_1 dooritydockerdemo_db_1
  ;;
  *)
    echo 'Parameter not supported.'
  ;;
esac
