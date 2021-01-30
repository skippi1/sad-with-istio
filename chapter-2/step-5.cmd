kubectl.exe -n default delete serviceaccount httpbin

kubectl.exe -n default delete service httpbin

kubectl.exe -n default delete deploy httpbin

kubectl.exe label namespace default "istio-injection-"

kubectl.exe apply -n online-boutique -f frontend-vortual-service.yaml
