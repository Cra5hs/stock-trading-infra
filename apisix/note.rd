Check the status of the pods by running this command:

  kubectl get pods --namespace "ingress-apisix" -l app.kubernetes.io/instance=apisix

APISIX Dashboard:

    Your APISIX Dashboard site can be accessed through the following DNS name from within your cluster:

        apisix-dashboard.ingress-apisix.svc.cluster.local (port 80)

    To access your Apisix site from outside the cluster follow the steps below:

    1. Get the Apisix URL by running these commands:

      NOTE: It may take a few minutes for the LoadBalancer IP to be available.
            Watch the status with: 'kubectl get svc --namespace ingress-apisix -w apisix-dashboard'

       export SERVICE_IP=$(kubectl get svc --namespace ingress-apisix apisix-dashboard --include "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
       echo "Apisix URL: http://$SERVICE_IP/"

    2. Open a browser and access APISIX Dashboard using the obtained URL.

    3. Login with the following credentials below:

      echo Username: user
      echo Password: $(kubectl get secret --namespace ingress-apisix apisix-dashboard -o jsonpath="{.data.password}" | base64 -d)

APISIX Control Plane:

    Your APISIX Control Plane Admin API site can be accessed through the following DNS name from within your cluster:

        apisix-control-plane.ingress-apisix.svc.cluster.local (port 9180)

    To access your Apisix site from outside the cluster follow the steps below:

    1. Get the Apisix URL by running these commands:

       kubectl port-forward --namespace ingress-apisix svc/apisix-control-plane 9180:9180 &
       echo "APISIX Control Plane Admin API URL: http://127.0.0.1:9180//"

    2. Access the API using the API Token below:

      echo API Token: $(kubectl get secret --namespace ingress-apisix apisix-control-plane-api-token -o jsonpath="{.data.admin-token}" | base64 -d)

APISIX Data Plane:

    Your APISIX Data Plane Admin API site can be accessed through the following DNS name from within your cluster:

        apisix-data-plane.ingress-apisix.svc.cluster.local (port 80)

    To access your Apisix site from outside the cluster follow the steps below:

    1. Get the Apisix URL by running these commands:

      NOTE: It may take a few minutes for the LoadBalancer IP to be available.
            Watch the status with: 'kubectl get svc --namespace ingress-apisix -w apisix-data-plane'

       export SERVICE_IP=$(kubectl get svc --namespace ingress-apisix apisix-data-plane --include "{{ range (index .status.loadBalancer.ingress 0) }}{{ . }}{{ end }}")
       echo "Apisix URL: http://$SERVICE_IP/"