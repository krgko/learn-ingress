#!/bin/bash

echo "Start ..."
set -v

kubectl apply -f ./local/deployment_echo.yaml

kubectl apply -f ./local/service_echo.yaml

kubectl apply -f ./local/ingress.yaml

minikube ip