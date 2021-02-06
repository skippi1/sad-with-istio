istioctl install --set profile=demo

kubectl create namespace online-boutique

kubectl label namespace online-boutique istio-injection=enabled

curl -L https://raw.githubusercontent.com/aspenmesh/liveproject/master/section_1/online-boutique-manifests.yaml -o online-boutique-manifests.yaml

kubectl apply -n online-boutique -f online-boutique-manifests.yaml

kubectl -n online-boutique get pods

kubectl port-forward deployment/frontend 8080:8080