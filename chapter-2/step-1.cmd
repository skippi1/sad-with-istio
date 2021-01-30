kubectl.exe -n istio-system get svc istio-ingressgateway -o jsonpath='{.spec.type}'

kubectl.exe -n istio-system get svc istio-ingressgateway
kubectl.exe -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'
kubectl.exe -n istio-system get svc istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}'