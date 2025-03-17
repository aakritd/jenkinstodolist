#!/bin/bash

docker login

cd nginx
docker build -t frontend-img .
cd ..

docker build -t backend-img .

docker pull mysql:latest

docker tag mysql:latest aakritdongol/mysql:latest

docker push aakritdongol/mysql:latest

docker tag backend-img:latest aakritdongol/backend-img:latest

docker push aakritdongol/backend-img:latest


docker tag frontend-img:latest aakritdongol/frontend-img:latest

docker push aakritdongol/frontend-img:latest