#!/bin/bash

SERVER_IP="127.0.0.1"
PORT=8080
ROOT_DIR="/home/vm10"  

if ! nc -z $SERVER_IP $PORT; then
  echo "Порт $PORT недоступен"
  exit 1
fi

if ! sudo test -f "$ROOT_DIR/index.html"; then
  echo "Файл index.html не существует"
  exit 1
fi

exit 0

