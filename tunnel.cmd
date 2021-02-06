start minikube.exe tunnel 
start minikube.exe service istio-ingressgateway -n istio-system
kubectl.exe -n istio-system port-forward $(kubectl.exe -n istio-system get pod -l app=jaeger --no-headers -o jsonpath='{.items[0].metadata.name}') 16686:16686     