sh apisix.sh
sh httpbin-install.sh
sh sisox-tls-secret.sh
kubectl apply -f sisox-issuer.yaml
kubectl apply -f sisox-cert.yaml
kubectl apply -f api-route.yaml