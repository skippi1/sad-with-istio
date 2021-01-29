kubectl.exe label namespace default --overwrite "istio-injection=enabled"

kubectl.exe -n default apply -f httpbin.yaml