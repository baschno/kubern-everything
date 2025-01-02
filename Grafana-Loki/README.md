# Install Grafana-Loki-Stack

## Grafana

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm install grafana grafana/grafana --namespace grafana --create-namespace


### Notes
1. Get your 'admin' user password by running:

   kubectl get secret --namespace grafana grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo


2. The Grafana server can be accessed via port 80 on the following DNS name from within your cluster:

   grafana.grafana.svc.cluster.local

   Get the Grafana URL to visit by running these commands in the same shell:
     export POD_NAME=$(kubectl get pods --namespace grafana -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana" -o jsonpath="{.items[0].metadata.name}")
     kubectl --namespace grafana port-forward $POD_NAME 3000

3. Login with the password from step 1 and the username: admin
#################################################################################
######   WARNING: Persistence is disabled!!! You will lose your data when   #####
######            the Grafana pod is terminated.                            #####
#################################################################################


## Loki

helm show values grafana/loki-distributed > loki-distributed-overrides.yaml
helm upgrade --install --values loki-distributed-overrides.yaml loki grafana/loki-distributed -n grafana-loki --create-namespace

### Notes

***********************************************************************
 Welcome to Grafana Loki
 Chart version: 0.80.0
 Loki version: 2.9.10
***********************************************************************

Installed components:
* gateway
* ingester
* distributor
* querier
* query-frontend

## Promtail

helm show values grafana/promtail > promtail-overrides.yaml


### Notes
***********************************************************************
 Welcome to Grafana Promtail
 Chart version: 6.16.6
 Promtail version: 3.0.0
***********************************************************************

Verify the application is working by running these commands:
* kubectl --namespace grafana-loki port-forward daemonset/promtail 3101
* curl http://127.0.0.1:3101/metrics


## Grafana configuration

kubectl port-forward service/grafana 8080:80 -n grafana





# References

https://akyriako.medium.com/kubernetes-logging-with-grafana-loki-promtail-in-under-10-minutes-d2847d526f9e
