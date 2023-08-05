kubectl apply -f ./backend-apps/camarero-api/camarero-app.yaml
kubectl apply -f ./backend-apps/camarero-api/camarero-service.yaml

kubectl apply -f ./backend-apps/cocinera-api/cocinera-app.yaml
kubectl apply -f ./backend-apps/cocinera-api/cocinera-service.yaml

kubectl apply -f ./backend-apps/doncella-api/doncella-app.yaml
kubectl apply -f ./backend-apps/doncella-api/doncella-service.yaml