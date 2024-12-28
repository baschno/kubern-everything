
https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack#configuration


```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
```

Use for `helm` values:
https://github.com/cablespaghetti/k3s-monitoring/blob/master/kube-prometheus-stack-values.yaml

```
helm upgrade --install prometheus prometheus-community/kube-prometheus-stack --create-namespace --namespace monitoring --values kube-prometheus-stack-values.yaml
```

Accessing UIs via PortForwarding
```
kubectl port-forward svc/prometheus-grafana 8080:80 -n monitoring
kubectl port-forward svc/prometheus-kube-prometheus-prometheus 9090 -n monitoring
kubectl port-forward svc/prometheus-kube-prometheus-alertmanager 9093 -n monitoring
```

This will make Grafana accessible on http://localhost:8080, Prometheus on http://localhost:9090 and Alert Manager on http://localhost:9093

Login for Grafana:
**User:** admin
**Pwd:** prom-operator

