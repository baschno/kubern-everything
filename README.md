Current Setup

01 Metallb
Define IP Pool & L2 config

https://metallb.universe.tf/configuration/



https://ryan-pope.com/posts/Homelab-to-k3s/

https://blog.chicho.com.ar/how-to-deploy-a-kubernetes-cluster-with-k3s/

https://picluster.ricsanfre.com/docs/traefik/

https://k3s.rocks/metrics/


```
kubectl create namespace dishes
kubectl create deploy schnipo --image=bschnorbus/dish-schnipo -n dishes
kubectl expose deploy schnipo --port=80 --target-port=8080 --type=LoadBalancer -n dishes
```