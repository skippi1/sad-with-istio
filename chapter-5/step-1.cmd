# from istio install directory
# kubectl apply -f samples/addons/prometheus.yaml
kubectl.exe get pod -n istio-system -l app=prometheus
kubectl.exe get configmap -n istio-system prometheus -o yaml 

kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=prometheus --no-headers -o jsonpath='{.items[0].metadata.name}') 9091:9090

curl.exe -sS --data-urlencode  query="sum by (destination_app, destination_service, response_code, reporter) (increase(istio_requests_total{source_app=\"istio-ingressgateway\", destination_app!=\"unknown\", reporter=\"source\"}[5m]))"     "http://127.0.0.1:9091/api/v1/query" | jq .
curl.exe -sS --data-urlencode 'query=sum by (destination_app, destination_service, response_code, reporter) (increase(istio_requests_total{destination_app!=\"unknown\", reporter=\"source\", source_app=\"istio-ingressgateway\"}[1m]))' 'http://127.0.0.1:9091/api/v1/query' | jq .