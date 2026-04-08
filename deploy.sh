#!/bin/bash
cd /var/www/commissionexplained
git pull
docker build -t commissionexplained .
docker stop commissionexplained 2>/dev/null
docker rm commissionexplained 2>/dev/null
docker run -d --name commissionexplained --restart unless-stopped -p 5020:80 commissionexplained
