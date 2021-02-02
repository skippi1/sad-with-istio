## Valid Token
```
> curl.exe -v -H "Authorization: Bearer $VALID_TOKEN" http://127.0.0.1:50466/_healthz
*   Trying 127.0.0.1...
* TCP_NODELAY set      
> GET /_healthz HTTP/1.1
> Host: 127.0.0.1:50466
> User-Agent: curl/7.55.1
> Accept: */*
> Authorization: Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IkRIRmJwb0lVcXJZOHQyenBBMnFYZkNtcjVWTzVaRXI0UnpIVV8tZW52dlEiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJib3V0aXF1ZXN0b3JlLmNvbSIsImV4cCI6MTkxNDM2NTM2NSwiaWF0IjoxNTk5MDA1MzY1LCJpc3MiOiJ0ZXN0aW5nQHNlY3VyZS5pc3Rpby5pbyIsInN1YiI6InVzZXIxQHh5ei5jb20ifQ.pZHGJgEP0qsJ1pSBPU6nwpMETf3MqlWx-T0PED0BLb5aTnbXWklIzHV4JHgMk6Td4thI4cC4_mCvrFlgm1uqzO2U_DEdNOReNMGNnDSQ87hWEtOQxn50c83dVq3-w4FUrKBjS1lYhiabKWVfr3BC_Bmwefl1TVhgP_iNuQGsWsj_Tcl4TWP93yS93DazphAl0uIOw3WvmJSfhnaZ7cEIk0PzGmsLq96FLbGatZX1DL8OKhv2Hz-iN0V6KG_5GjjEdD7LVSprw4oedtwbahDVVuxh0due1DImXLhH9oH1_RkntrD98JlKYoNzG1-7apSV0xw5mlE8L2HXDo3TKE33WA        
>
* Empty reply from server
* Connection #0 to host 127.0.0.1 left intact
curl: (52) Empty reply from server
PS C:\Users\markus\Documents\GitHub\sad-with-istio\chapter-4> curl.exe -v -H "Authorization: Bearer $VALID_TOKEN" http://127.0.0.1:50465/_healthz
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to 127.0.0.1 (127.0.0.1) port 50465 (#0)
> GET /_healthz HTTP/1.1
> Host: 127.0.0.1:50465
> User-Agent: curl/7.55.1
> Accept: */*
> Authorization: Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IkRIRmJwb0lVcXJZOHQyenBBMnFYZkNtcjVWTzVaRXI0UnpIVV8tZW52dlEiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJib3V0aXF1ZXN0b3JlLmNvbSIsImV4cCI6MTkxNDM2NTM2NSwiaWF0IjoxNTk5MDA1MzY1LCJpc3MiOiJ0ZXN0aW5nQHNlY3VyZS5pc3Rpby5pbyIsInN1YiI6InVzZXIxQHh5ei5jb20ifQ.pZHGJgEP0qsJ1pSBPU6nwpMETf3MqlWx-T0PED0BLb5aTnbXWklIzHV4JHgMk6Td4thI4cC4_mCvrFlgm1uqzO2U_DEdNOReNMGNnDSQ87hWEtOQxn50c83dVq3-w4FUrKBjS1lYhiabKWVfr3BC_Bmwefl1TVhgP_iNuQGsWsj_Tcl4TWP93yS93DazphAl0uIOw3WvmJSfhnaZ7cEIk0PzGmsLq96FLbGatZX1DL8OKhv2Hz-iN0V6KG_5GjjEdD7LVSprw4oedtwbahDVVuxh0due1DImXLhH9oH1_RkntrD98JlKYoNzG1-7apSV0xw5mlE8L2HXDo3TKE33WA
> 
< HTTP/1.1 200 OK
< set-cookie: shop_session-id=0ee76b9b-8e1f-4afd-8674-e91ac2569fe9; Max-Age=172800
< date: Tue, 02 Feb 2021 19:20:19 GMT
< content-length: 2
< content-type: text/plain; charset=utf-8
< x-envoy-upstream-service-time: 1
< server: istio-envoy
< 
ok* Connection #0 to host 127.0.0.1 left intact
```
## Invalid Token
```
> curl.exe -v -H "Authorization: Bearer $INVALID_TOKEN" http://127.0.0.1:50465/_healthz
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to 127.0.0.1 (127.0.0.1) port 50465 (#0)
> GET /_healthz HTTP/1.1
> Host: 127.0.0.1:50465
> User-Agent: curl/7.55.1
> Accept: */*
> Authorization: Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6IkRIRmJwb0lVcXJZOHQyenBBMnFYZkNtcjVWTzVaRXI0UnpIVV8tZW52dlEiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJib3V0aXF1ZXN0b3JlLmNvbSIsImV4cCI6MTkxNDM2NTI1MSwiaWF0IjoxNTk5MDA1MjUxLCJpc3MiOiJ3cm9uZy1pc3N1c2VyQHNlY3VyZS5pc3Rpby5pbyIsInN1YiI6InVzZXIxQHh5ei5jb20ifQ.SnQPGlkV66Q61zR8uZAzEhyPfynNmV_MGzvjnkxZhVv-elrKu7Wq50tj4SKGyjTJPR2-YFd_-p3eN4VveCH5NB3LjgyOliMQjnxSTN92CHXjoy6kHol2Lo-kFJmoNBvNBkKFpFJ3oD6ejTse7718r7WSUzeh4R_vV9QNEHNPucxpL3Yhm_EuYIMV-cfA_N58dA1YAjcZtlEM8PsFwDQGv5vTndGkQ_co0acuDBgXZsJ6xCaNvpgrx_ftpzlaA27PknKK6rrvTRSuxKP4Jn3GIB0nBa6uXUfMvlkUBvepwXooXO5XAlWRTa3J6ys2KkOVkDKMN-jdSv-K3_rLXxxb3Q>
< HTTP/1.1 401 Unauthorized
< content-length: 28
< content-type: text/plain
< date: Tue, 02 Feb 2021 19:23:27 GMT
< server: istio-envoy
<
```
## No Token
```
> curl.exe -v http://127.0.0.1:50465/_healthz
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to 127.0.0.1 (127.0.0.1) port 50465 (#0)
> GET /_healthz HTTP/1.1
> Host: 127.0.0.1:50465
> User-Agent: curl/7.55.1
> Accept: */*
>
< HTTP/1.1 200 OK
< set-cookie: shop_session-id=442122ad-97a3-401f-a19f-2da8b7d2dfad; Max-Age=172800
< date: Tue, 02 Feb 2021 19:26:30 GMT
< content-length: 2
< content-type: text/plain; charset=utf-8
< x-envoy-upstream-service-time: 1
< server: istio-envoy
<
ok* Connection #0 to host 127.0.0.1 left intact
```