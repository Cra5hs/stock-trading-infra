#create secret
sh ./keycloak/keycloak-secret.sh
#make db
helm install -n stock-trading keycloak-db bitnami/postgresql-ha --set postgresql.replicaCount=1

#make app
kubectl apply -n stock-trading -f ./keycloak/keycloak-app.yaml
kubectl apply -n stock-trading -f ./keycloak/keycloak-ingress.yaml