unset DOCKER_HOST
unset DOCKER_TLS_VERIFY
unset DOCKER_CERT_PATH
docker context use default
minikube delete --all --purge
rm -rf ~/.minikube
minikube start --driver=docker --memory=4096