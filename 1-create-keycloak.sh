kubectl apply -n crypto-trading -f ./keycloak/keycloak-pvc.yaml
kubectl apply -n crypto-trading -f ./keycloak/keycloak-db.yaml
kubectl apply -n crypto-trading -f ./keycloak/keycloak-app.yaml