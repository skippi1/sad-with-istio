.\run-openssl.cmd req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj "/O=httpbin Inc./CN=boutiquestore.com" -keyout root1.key -out root1.crt

.\run-openssl.cmd req -out server1.csr -newkey rsa:2048 -nodes -keyout server1.key -subj "/CN=httpbin.boutiquestore.com/O=boutique store"

.\run-openssl.cmd x509 -req -days 365 -CA root1.crt -CAkey root1.key -set_serial 0 -in server1.csr -out server1.crt

kubectl.exe -n istio-system create secret tls httpbin-tls-credential --key server1.key --cert=server1.crt

kubectl.exe label namespace default --overwrite "istio-injection=enabled"

kubectl.exe apply -n default -f httpbin.yaml

kubectl.exe apply -n default -f httpbin-gateway.yaml

kubectl.exe apply -n default -f httpbin-virtual-service.yaml


openssl.exe s_client -showcerts -connect 127.0.0.1:56776 -servername httpbin.boutiquestore.com -CAfile root1.crt -debug

openssl s_client -connect 127.0.0.1:56776 -servername "marketplace.boutiquestore.com" -CAfile root.crt