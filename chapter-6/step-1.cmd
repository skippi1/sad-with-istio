istioctl install --set profile=demo --set meshConfig.accessLogFile="/dev/stdout" --set meshConfig.accessLogEncoding=JSON --set values.global.istiod.enableAnalysis=true
istioctl proxy-status

$INGRESS_POD=$(kubectl get pod -n istio-system -l app=istio-ingressgateway -o jsonpath='{.items[0].metadata.name}')
istioctl.exe proxy-config listeners $INGRESS_POD".istio-system"
istioctl.exe proxy-config listeners $INGRESS_POD".istio-system" --address "0.0.0.0" --port "8080" -o json
istioctl.exe proxy-config routes $INGRESS_POD".istio-system" --name "http.80" -o json
istioctl.exe proxy-config clusters $INGRESS_POD".istio-system" --fqdn 'outbound|80||frontend.online-boutique.svc.cluster.local' -o json
istioctl.exe proxy-config endpoints $INGRESS_POD".istio-system" --cluster 'outbound|80||frontend.online-boutique.svc.cluster.local' -o json
