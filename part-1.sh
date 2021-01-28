alias kubectl=kubectl.exe

istioctl.exe install --set profile=demo

kubectl create namespace online-boutique

kubectl label namespace online-boutique istio-injection=enabled

kubectl apply -n online-boutique -f online-boutique-manifests.yaml