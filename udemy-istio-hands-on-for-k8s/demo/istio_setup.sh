minikube delete
minikube start --memory 4096
kubectl apply -f 1-istio-init.yaml
kubectl apply -f 2-istio-minikube.yaml
kubectl apply -f 3-kiali-secret.yaml
kubectl label namespace default istio-injection=enabled
kubectl apply -f 4-application-full-stack.yaml

# To access fleetman web app on Mac
kubectl port-forward svc/fleetman-webapp 30080:80
# Visit: http://localhost:30080/

# To access Kiali
minikube service kiali -n istio-system
# Visit the IP and Port displayed under tunneling section. E.G:  http://127.0.0.1:51803

# To access Jaeger (below command should open the Jaeger app):
minikube service tracing -n istio-system