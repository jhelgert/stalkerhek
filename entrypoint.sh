#!/bin/sh

sed -i "s|__MODEL__|${MODEL}|g" stalkerhek.yml
sed -i "s|__MAC__|${MAC}|g" stalkerhek.yml
sed -i "s|__URL__|${URL}|g" stalkerhek.yml
sed -i "s|__TOKEN__|${TOKEN}|g" stalkerhek.yml

# Hand off to the CMD
exec "$@"
