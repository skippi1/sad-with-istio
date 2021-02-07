istioctl install --set profile=demo --set meshConfig.accessLogFile="/dev/stdout" --set meshConfig.accessLogEncoding=JSON --set values.global.istiod.enableAnalysis=true
istioctl proxy-status