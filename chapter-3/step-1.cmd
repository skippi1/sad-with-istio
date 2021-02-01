-- run-openssl.cmd req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -subj "/O=boutiquestore Inc./CN=boutiquestore.com" -keyout root.key -out root.crt

-- run-openssl.cmd req -out server.csr -newkey rsa:2048 -nodes -keyout server.key -subj "/CN=marketplace.boutiquestore.com/O=boutique store"

-- run-openssl.cmd x509 -req -days 365 -CA root.crt -CAkey root.key -set_serial 0 -in server.csr -out server.crt

kubectl.exe -n istio-system create secret tls online-boutique-tls-credential --key server.key --cert=server.crt