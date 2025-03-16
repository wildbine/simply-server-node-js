#!/bin/bash

check_and_notify_port() {
  local PORT=$1
  local PROCESS_INFO
  
  PROCESS_INFO=$(lsof -i :$PORT)
  
  if [[ ! -z $PROCESS_INFO ]]; then
    echo "Порт $PORT занят следующими процессами:"
    echo "$PROCESS_INFO"
    echo "Рекомендуется провести проверку данных процессов."
  else
    echo "Порт $PORT свободен."
  fi
}

check_and_notify_port 3000
check_and_notify_port 80

echo "Если порты свободны или после освобождения, запустите docker-compose."
echo "Запуск docker-compose можно выполнить сейчас вручную с помощью команды: docker-compose up --build"
