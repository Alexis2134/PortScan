#!/bin/bash

#Ctrl_c
function ctrl_c(){
  echo -e "\n\n saliendo..."
  exit 1
}
trap ctrl_c INT

for port in $(seq 1 65535); do
  if echo '' > /dev/tcp/127.0.0.1/$port; then
  echo -e "EL puerto $port - OPEN"
  else
    echo -e "EL puerto $port - CLOSED"
  fi
done 2>/dev/null
