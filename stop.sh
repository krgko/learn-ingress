#!/bin/bash

echo "Stop ..."
set -v

kubectl delete -f ./local/deployment_echo.yaml

kubectl delete -f ./local/service_echo.yaml

kubectl delete -f ./local/ingress.yaml

echo "Finished !!!"