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


## Load Balancer Test w/ Nginx Deployment

```
#Create deploy
kubectl create deploy nginx --image=nginx

kubectl scale --replicas=3 deployment/nginx -n test

k create svc -n test clusterip nginx --tcp=80

#Expose the deploy as a LoadBalancer type
kubectl expose deploy nginx --port=80 --target-port=80 --type=LoadBalancer

#Verify
kubectl get svc nginx
NAME    TYPE           CLUSTER-IP     EXTERNAL-IP     PORT(S)        AGE
nginx   LoadBalancer   10.43.60.115   192.168.52.30   80:32676/TCP   5h19m

```