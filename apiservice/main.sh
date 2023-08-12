#!/bin/sh
kubectl run httpbin --image kennethreitz/httpbin --namespace stock-trad

kubectl expose pod httpbin -n stock-trad --port 80