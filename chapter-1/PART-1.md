# Result (part 1)
```
shell> istioctl verify-install
ClusterRole: istiod-istio-system.default checked successfully
ClusterRole: istio-reader-istio-system.default checked successfully
ClusterRoleBinding: istio-reader-istio-system.default checked successfully
ClusterRoleBinding: istiod-istio-system.default checked successfully
Role: istiod-istio-system.istio-system checked successfully
RoleBinding: istiod-istio-system.istio-system checked successfully
ServiceAccount: istio-reader-service-account.istio-system checked successfully
ServiceAccount: istiod-service-account.istio-system checked successfully
ValidatingWebhookConfiguration: istiod-istio-system.default checked successfully
CustomResourceDefinition: destinationrules.networking.istio.io.default checked successfully
CustomResourceDefinition: envoyfilters.networking.istio.io.default checked successfully
CustomResourceDefinition: gateways.networking.istio.io.default checked successfully
CustomResourceDefinition: serviceentries.networking.istio.io.default checked successfully
CustomResourceDefinition: sidecars.networking.istio.io.default checked successfully
CustomResourceDefinition: virtualservices.networking.istio.io.default checked successfully
CustomResourceDefinition: workloadentries.networking.istio.io.default checked successfully
CustomResourceDefinition: workloadgroups.networking.istio.io.default checked successfully
CustomResourceDefinition: authorizationpolicies.security.istio.io.default checked successfully
CustomResourceDefinition: peerauthentications.security.istio.io.default checked successfully
CustomResourceDefinition: requestauthentications.security.istio.io.default checked successfully
CustomResourceDefinition: istiooperators.install.istio.io.default checked successfully
ConfigMap: istio.istio-system checked successfully
Deployment: istiod.istio-system checked successfully
ConfigMap: istio-sidecar-injector.istio-system checked successfully
MutatingWebhookConfiguration: istio-sidecar-injector.default checked successfully
PodDisruptionBudget: istiod.istio-system checked successfully
Service: istiod.istio-system checked successfully
EnvoyFilter: metadata-exchange-1.6.istio-system checked successfully
EnvoyFilter: tcp-metadata-exchange-1.6.istio-system checked successfully
EnvoyFilter: stats-filter-1.6.istio-system checked successfully
EnvoyFilter: tcp-stats-filter-1.6.istio-system checked successfully
EnvoyFilter: metadata-exchange-1.7.istio-system checked successfully
EnvoyFilter: tcp-metadata-exchange-1.7.istio-system checked successfully
EnvoyFilter: stats-filter-1.7.istio-system checked successfully
EnvoyFilter: tcp-stats-filter-1.7.istio-system checked successfully
EnvoyFilter: metadata-exchange-1.8.istio-system checked successfully
EnvoyFilter: tcp-metadata-exchange-1.8.istio-system checked successfully
EnvoyFilter: stats-filter-1.8.istio-system checked successfully
EnvoyFilter: tcp-stats-filter-1.8.istio-system checked successfully
Deployment: istio-ingressgateway.istio-system checked successfully
PodDisruptionBudget: istio-ingressgateway.istio-system checked successfully
Role: istio-ingressgateway-sds.istio-system checked successfully
RoleBinding: istio-ingressgateway-sds.istio-system checked successfully
Service: istio-ingressgateway.istio-system checked successfully
ServiceAccount: istio-ingressgateway-service-account.istio-system checked successfully
Deployment: istio-egressgateway.istio-system checked successfully
PodDisruptionBudget: istio-egressgateway.istio-system checked successfully
Role: istio-egressgateway-sds.istio-system checked successfully
RoleBinding: istio-egressgateway-sds.istio-system checked successfully
Service: istio-egressgateway.istio-system checked successfully
ServiceAccount: istio-egressgateway-service-account.istio-system checked successfully
Checked 12 custom resource definitions
Checked 2 Istio Deployments
Istio is installed successfully
```
 # steps
 ## 1. Install istio
  ```
  shell> istioctl.exe install --set profile=demo
  This will install the Istio demo profile with ["Istio core" "Istiod" "Ingress gateways" "Egress gateways"] components into the cluster. Proceed? (y/N) y
  ✔ Istio core installed 
  ✔ Istiod installed 
  ✔ Egress gateways installed
  ✔ Ingress gateways installed 
  ✔ Installation complete
  ```

## 2. Create Namespace
```
shell> kubectl create namespace online-boutique
namespace/online-boutique created
```
## 3. Add Label to namespace
```
shell> kubectl label namespace online-boutique istio-injection=enabled
namespace/online-boutique labeled
```
## 4. Download deployment
shell> wsl curl -L https://raw.githubusercontent.com/aspenmesh/liveproject/master/section_1/online-boutique-manifests.yaml -o online-boutique-manifests.yaml
```   
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 16575  100 16575    0     0  50677      0 --:--:-- --:--:-- --:--:-- 50843
```
## 5. Apply Resources
```
shell> kubectl apply -n online-boutique -f online-boutique-manifests.yaml
deployment.apps/emailservice created
service/emailservice created
deployment.apps/checkoutservice created
service/checkoutservice created
deployment.apps/recommendationservice created
service/recommendationservice created
deployment.apps/frontend created
service/frontend created
service/frontend-external created
deployment.apps/paymentservice created
service/paymentservice created
deployment.apps/productcatalogservice created
service/productcatalogservice created
deployment.apps/cartservice created
service/cartservice created
deployment.apps/currencyservice created
service/currencyservice created
deployment.apps/shippingservice created
service/shippingservice created
deployment.apps/redis-cart created
service/redis-cart created
deployment.apps/adservice created
service/adservice created
```
## 6. Show PODs
```
shell> **kubectl -n online-boutique get pods**
NAME                                     READY   STATUS            RESTARTS   AGE
adservice-7659d48d84-gjtrg               0/2     PodInitializing   0          46s
cartservice-65c987d449-9v5hf             0/2     PodInitializing   0          47s
checkoutservice-8bddb89db-pkls4          0/2     PodInitializing   0          48s
currencyservice-7978fb77d8-4b84c         0/2     PodInitializing   0          47s
emailservice-8848674-959tk               0/2     PodInitializing   0          49s
frontend-58594bf684-62rlt                0/2     PodInitializing   0          48s
paymentservice-77979f5c66-8ptpw          0/2     PodInitializing   0          48s
productcatalogservice-7d5f94d858-m6vfh   0/2     PodInitializing   0          48s
recommendationservice-764dc66688-jr2k7   0/2     PodInitializing   0          48s
redis-cart-74594bd569-vrgv9              0/2     PodInitializing   0          47s
shippingservice-589dc45c5d-2f4jl         0/2     PodInitializing   0          47s
```
## 7. Show istio version
```
shell> istioctl version
client version: 1.8.1
control plane version: 1.8.1
data plane version: 1.8.1 (13 proxies)
```