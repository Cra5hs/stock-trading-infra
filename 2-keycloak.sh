sh ./keycloak/keycloak-ns.sh
sh ./keycloak/keycloak-db.sh
sh ./keycloak/keycloak-secret.sh
kubectl apply -f ./keycloak/keycloak-app.yaml
kubectl apply -f ./keycloak/keycloak-service.yaml
kubectl apply -f ./keycloak/keycloak-ingress.yaml