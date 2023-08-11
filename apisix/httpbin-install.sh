kubectl run httpbin --image kennethreitz/httpbin --namespace ingress-apisix
kubectl expose pod httpbin -n ingress-apisix --port 80