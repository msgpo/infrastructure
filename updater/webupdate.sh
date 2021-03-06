#!/bin/bash

while true; do
    ipfs --api="/ip4/172.18.44.2/tcp/5001" get /ipns/www.parrotsec.org -o /var/www/html
    ipfs --api="/ip4/172.18.44.2/tcp/5001" get /ipns/docs.parrotsec.org -o /var/www/docs
    #ipfs --api="/ip4/172.18.44.2/tcp/5001" get /ipns/static.parrotsec.org -o /var/www/static
    rsync -qa --delete-after /var/www/docs/ /var/www/html/docs/
    sleep 600
done
