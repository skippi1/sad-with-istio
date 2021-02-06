# from istio install directory
# kubectl.exe apply -f  samples/addons/jaeger.yaml

kubectl.exe -n istio-system get pods -l app=jaeger

kubectl.exe -n istio-system port-forward $(kubectl.exe -n istio-system get pod -l app=jaeger --no-headers -o jsonpath='{.items[0].metadata.name}') 16686:16686

istioctl.exe install --set profile=demo --set meshConfig.accessLogFile="/dev/stdout" --set meshConfig.accessLogEncoding=JSON --set values.global.tracer.zipkin.address=zipkin.istio-system:9411

kubectl.exe -n istio-system get configmap istio -o yaml | grep zipkin

# delete all pods
kubectl.exe delete pod -n istio-system -l app=istio-ingressgateway
kubectl.exe delete pod -n istio-system -l app=istio-egressgateway
kubectl.exe -n online-boutique get pods --no-headers -o jsonpath='{.items[*].metadata.name}' |  xargs kubectl -n online-boutique delete pod