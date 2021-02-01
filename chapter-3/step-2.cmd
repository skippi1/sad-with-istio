kubectl.exe apply -n online-boutique -f frontend-gateway.yaml

curl.exe -H "Host: marketplace.boutiquestore.com" --cacert root.crt --resolve "marketplace.boutiquestore.com:443:127.0.0.1" "https://marketplace.boutiquestore.com:443/_healthz"

openssl.exe s_client -showcerts -connect 127.0.0.1:56776 -servername marketplace.boutiquestore.com -CAfile root.crt

openssl.exe s_client -showcerts -connect 127.0.0.1:56776 -servername marketplace.boutiquestore.com -CAfile root.crt -debug