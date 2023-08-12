#!/bin/sh

helm repo add apisix https://charts.apiseven.com

helm repo add bitnami https://charts.bitnami.com/bitnami

helm repo update

helm install apisix oci://registry-1.docker.io/bitnamicharts/apisix --namespace=stock-trad --set dashboard.enabled=false

helm install cert-manager jetstack/cert-manager --namespace stock-trad  --set prometheus.enabled=false --set installCRDs=true

kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v0.5.0/standard-install.yaml
