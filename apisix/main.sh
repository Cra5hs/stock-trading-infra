#!/bin/sh

sh apisix.sh

sh api-install.sh

kubectl apply -f sisox-issuer.yaml

kubectl apply -f sisox-cert.yaml

kubectl apply -f api-route.yaml