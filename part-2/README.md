## http get response
```
shell> curl.exe http://127.0.0.1:51529/wrongpath
404 page not found
```
## access log
```
{
  "upstream_cluster": "outbound|80||frontend.online-boutique.svc.cluster.local",
  "downstream_remote_address": "172.17.0.1:20925",
  "authority": "127.0.0.1:51529",
  "path": "/wrongpath",
  "protocol": "HTTP/1.1",
  "upstream_service_time": "1",
  "upstream_local_address": "172.17.0.4:36788",
  "duration": 1,
  "upstream_transport_failure_reason": null,
  "downstream_local_address": "172.17.0.4:8080",
  "route_name": null,
  "user_agent": "curl/7.55.1",
  "response_code": 404,
  "response_flags": "-",
  "start_time": "2021-01-28T21:18:50.846Z",
  "method": "GET",
  "request_id": "bc0ee357-6595-97a7-ac67-bbbe9f13b1ab",
  "upstream_host": "172.17.0.9:8080",
  "x_forwarded_for": "172.17.0.1",
  "requested_server_name": null,
  "bytes_received": 0,
  "bytes_sent": 19
}
```
* the **upstream_cluster** fields indicates routing to service "frontend" in namespace "online-boutique"
* http status 404: not found => application knowledge