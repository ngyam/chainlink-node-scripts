#!/bin/bash

cdir="$( cd "$(dirname "$0")" ; pwd -P )"

# first run for init
if [ ! -z "$1" ]; then
    echo $1 > "${cdir}/.port"
    sudo docker run -p 6688:$1 -v $cdir:/chainlink -it --env-file=$cdir/.env smartcontract/chainlink:latest local n
else
    port=$(head -n 1 "${cdir}/.port")
    sudo docker run -d -p $port:6688 -v $cdir:/chainlink -it --env-file=$cdir/.env smartcontract/chainlink:latest local n -p /chainlink/.password -a $cdir/.api
fi
