## 1. Check that the service type of istio-ingressgateway is LoadBalancer
```
shell> kubectl -n istio-system get svc istio-ingressgateway -o jsonpath='{.spec.type}'
LoadBalancer
```

## 2. 
```
shell> kubectl -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'
shell> kubectl -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
```

## 3.
```
shell> wsl 
wsl> export INGRESS=$(kubectl.exe -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
wsl> echo $INGRESS
```

# 4.
```
shell> minikube.exe service istio-ingressgateway -n istio-system
shell> kubectl label namespace default --overwrite "istio-injection=enabled"
shell> kubectl -n default apply -f .\yaml\httpbin.yaml
shell> kubectl.exe -n online-boutique apply -f .\yaml\frontend-virtual-service.yaml
```

## 5.
```
shell> istioctl install --set profile=demo --set meshConfig.accessLogFile="/dev/stdout" --set meshConfig.accessLogEncoding=JSON
```