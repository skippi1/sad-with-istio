curl.exe -L https://raw.githubusercontent.com/aspenmesh/liveproject/master/section_2/frontend-v2.yaml -o frontend-v2.yaml

kubectl.exe -n online-boutique apply -f frontend-v2.yaml

kubectl.exe -n online-boutique get pods -l app=frontend-v2

kubectl.exe -n online-boutique get endpoints frontend-v2

kubectl.exe -n online-boutique get endpoints frontend

kubectl.exe apply -n online-boutique -f frontend-virtual-service-2.yaml