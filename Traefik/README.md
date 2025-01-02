
Traefik via Helm

    helm repo add traefik https://helm.traefik.io/traefik


helm install traefik traefik/traefik --namespace traefik --create-namespace --values traefik-values.yaml

kubectl create deploy nginx --image=nginx -n test
k create svc -n test clusterip nginx --tcp=80
k scale --replicas=3 deployment/nginx -n test

k get po -n test -o wide
k create svc -n test clusterip nginx 
k create svc -n test clusterip nginx --tcp=80
k get svc -n test
dig k.internal.schnrbs.work
dig k8s.internal.schnrbs.work
dig n.k8s.internal.schnrbs.work
k apply -f traefik_lempa/nginx-ingress.yaml
k delete ingress nginx-ingress
k apply -f traefik_lempa/nginx-ingress.yaml
k get svc -n test
k get ingress
k get ingress -n test
git staus
git status
git diff
git commit -am "wip thing"
git checkout master
git pull --rebase
git merge wip
git push 
git log
git checkout master
cd traefik_lempa
helm upgrade traefik traefik/traefik --namespace traefik --create-namespace --values traefik_lempa/traefik-values.yaml
cd ..
helm upgrade traefik traefik/traefik --namespace traefik --create-namespace --values traefik_lempa/traefik-values.yaml
k get svc ingressRoute
k get svc ingressRoutes
k get svc ingressroutes.traefik.io
k get svc ingressroutes.traefik.io --all-namespaces
k get ingressroutes.traefik.io --all-namespaces
helm upgrade traefik traefik/traefik --namespace traefik --create-namespace --values traefik_lempa/traefik-values.yaml
exit
helm repo add jetstack https://charts.jetstack.io --force-update
helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --values cert-manager-values.yaml
helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --values traefik_lempa/cert-manager-values.yaml
echo -n 'P96My4uiHudZtiC2ymjSGQ0174CoRBnI9ztmA0Wh' | base64
k get po
alias k=kubectl
k get po
k apply traefik_lempa/cert-manager-issuer-secret.yaml
k apply -f traefik_lempa/cert-manager-issuer-secret.yaml
k get secret
k get secrets
k get secret -n cert-manager
k apply -f traefik_lempa/cert-manager-cluster-issuer.yaml
k get clusterissuers.cert-manager.io
k apply -f traefik_lempa/nginx-certificate.yaml
k apply -f traefik_lempa/nginx-ingress.yaml
k apply -f traefik_lempa/cert-manager-cluster-issuer.yaml