# 1. Check istio ingress type for LoadBalancer
```
shell> kubectl -n istio-system get svc istio-ingressgateway -o jsonpath='{.spec.type}'
LoadBalancer
```

# 2. Get hostname 
```
shell> kubectl -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].hostname}' 
localhost
```

# 3. Install istio gateway on port 80
```
shell> kubectl apply -n online-boutique -f frontend-gateway.yaml
```

# 4. Install istio virtual service
```
kubectl apply -n online-boutique -f frontend-virtual-service.yaml
```

# 5. Deploy a second version of the app
```
shell> kubectl -n online-boutique apply -f yaml/frontend-v2.yaml

shell> kubectl -n online-boutique get endpoints frontend-v2
NAME          ENDPOINTS        AGE
frontend-v2   10.1.0.96:8080   51s

shell> kubectl.exe -n online-boutique get endpoints frontend
NAME       ENDPOINTS   AGE
frontend               10s
```