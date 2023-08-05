# create configmaps
kubectl create configmap -n sisox haproxy-auth-gateway-iss-cert --from-file=gateway/config/gateway.pem
kubectl create configmap -n sisox haproxy-auth-gateway-haproxy-cfg --from-file=gateway/config/haproxy.cfg
# deploy the gateway
kubectl apply -f gateway/gateway-app.yaml
kubectl apply -f gateway/gateway-service.yaml
kubectl apply -f gateway/gateway-ingress.yaml

# create HTTPS ingress for the gateway
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout api-tls.key -out api-tls.crt -subj "/CN=api.sisox.site/O=sisox"
kubectl create secret -n sisox tls api-tls-secret --key api-tls.key --cert api-tls.crt

kubectl apply -f gateway/gateway-ingress.yaml