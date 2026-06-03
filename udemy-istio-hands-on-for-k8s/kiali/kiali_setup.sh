minikube delete
minikube start --memory 4096
kubectl apply -f 1-istio-init.yaml
kubectl apply -f 2-istio-minikube.yaml
kubectl apply -f 3-kiali-secret.yaml
kubectl apply -f 4-label-default-namespace.yaml
kubectl apply -f 5-application-no-istio.yaml

# To access Kiali
minikube service kiali -n istio-system
# Visit the IP and Port displayed under tunneling section. E.G:  http://127.0.0.1:51803