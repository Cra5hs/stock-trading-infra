helm repo add apisix https://charts.apiseven.com
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
kubectl create ns ingress-apisix
helm install apisix oci://registry-1.docker.io/bitnamicharts/apisix --namespace=ingress-apisix