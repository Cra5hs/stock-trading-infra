sh ./frontend-apps/app1/generate-cert.sh
kubectl apply -f ./frontend-apps/app1/app1.yaml

sh ./frontend-apps/app2/generate-cert.sh
kubectl apply -f ./frontend-apps/app2/app2.yaml