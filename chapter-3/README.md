```
shell> openssl.exe s_client -connect 127.0.0.1:56776 -servername "marketplace.boutiquestore.com" -CAfile root.crt
CONNECTED(00000134)
---
Certificate chain
 0 s:CN = marketplace.boutiquestore.com, O = boutique store
   i:O = boutiquestore Inc., CN = boutiquestore.com
---
Server certificate
-----BEGIN CERTIFICATE-----
MIIC7jCCAdYCAQAwDQYJKoZIhvcNAQELBQAwOTEbMBkGA1UECgwSYm91dGlxdWVz
dG9yZSBJbmMuMRowGAYDVQQDDBFib3V0aXF1ZXN0b3JlLmNvbTAeFw0yMTAyMDEy
MDAxMTlaFw0yMjAyMDEyMDAxMTlaMEExJjAkBgNVBAMMHW1hcmtldHBsYWNlLmJv
dXRpcXVlc3RvcmUuY29tMRcwFQYDVQQKDA5ib3V0aXF1ZSBzdG9yZTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAMox9QNE4IIRvyeFU2y3ZZUJte0r2JDE
Lq1fVoC9ffvRRPwi2+91QgL2g72vAFSq+oteKCaE2aXglR0FBH5+HSqS4Dh0f3JN
dvCtnZPj7GsNAKSWbI9MQEvl0qRAnNBZKZeHLq78STMsG/+2hw+CvvqJiPVpjxQB
ASYSgllYXO/76vf7EeADVMLn987To+gQizeAimbFm6/4iGeFZECyB0/qj3bVK9Lk
Atbya61z7Wa7PiN77k0ckwphXMbRomOCnknHdibuQXc/8JYd7U5EjyDzSBQM4rMU
YrwOe1K02vemhbYffJcwma2xbk7ZqInlf2QJ6nFwiAWKo85ldGxWw5UCAwEAATAN
BgkqhkiG9w0BAQsFAAOCAQEAFTFVwJQMdx33ONVPzMIQmoukSOxz13afQDIaOcUQ
/UTqSEbbVKnyCdeD0brmZq/BZqz+hEywwfeXVOqkAmFNoKZ55UOWXPFG652VUxeG
eCCSX5haynbWyJmLX8f/izPVlzomCsLnif4dYGPlaFKSUngxr/Lm6UV3EgJ1LJVo
i+UxbL4zh0WT8NeTy+66SK3016UBz/KSGFrWEnciNDcAVO28Helyvr0Rn8Yqp8sd
JvngMgp9hiHPGVBAZxFRUpwI/ak48VnktOkK+d50vMUK3+WzYilvgkbJcqHL0Fq4
m96W4NVgMlKrWXexRhofEEmHjogot+bvmBD+QKFRUI4r7w==
-----END CERTIFICATE-----
subject=CN = marketplace.boutiquestore.com, O = boutique store

issuer=O = boutiquestore Inc., CN = boutiquestore.com

---
No client certificate CA names sent
Peer signing digest: SHA256
Peer signature type: RSA-PSS
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 1244 bytes and written 411 bytes
Verification: OK
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 2048 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 0 (ok)
---
```