kubectl.exe apply -n online-boutique -f frontend-gateway.yaml

kubectl.exe apply -n online-boutique -f frontend-virtual-service.yaml

kubectl.exe apply -n online-boutique -f frontend-service.yaml

echo "call in seperate shell: minikube.exe service -n istio-system istio-ingressgateway"