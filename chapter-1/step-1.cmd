istioctl.exe install --set profile=demo

kubectl.exe create namespace online-boutique

kubectl.exe label namespace online-boutique istio-injection=enabled

curl.exe -L https://raw.githubusercontent.com/aspenmesh/liveproject/master/section_1/online-boutique-manifests.yaml -o online-boutique-manifests.yaml

kubectl.exe apply -n online-boutique -f online-boutique-manifests.yaml

kubectl.exe -n online-boutique get pods --watch

istioctl.exe verify-install