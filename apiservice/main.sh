#!/bin/sh
kubectl create ns api-service
kubectl run httpbin --image kennethreitz/httpbin --namespace api-service

kubectl expose pod httpbin -n api-service --port 80