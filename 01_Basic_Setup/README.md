## Enter Master Node

Install w/o ingress controller & loadbalancer

    curl -sfL https://get.k3s.io | sh -s - --disable traefik --disable servicelb

Get Token for worker setup
    
    cat /var/lib/rancher/k3s/server/node-token

Retrieve config/cert

    cat /etc/rancher/k3s/k3s.yaml

or get via scp from outside

    scp -i ~/.ssh/k3s-ssh root@k3s-vm-master:/etc/rancher/k3s/k3s.yaml ~/.kube/config


> ![INFO]
> Don't forget to adapt the master ip 


## Enter Worker Node

    export TOKEN="K100556700fa04281a3c93503cffa4c576a12b72be864d09280fa53c046a7a9876e::server:4b4a3d56d663d28bf6d2e0fbe9201ee8"
    export MASTER_NODE="192.168.178.127"

    curl -sfL https://get.k3s.io | K3S_URL=https://${MASTER_NODE}:6443 K3S_TOKEN=${TOKEN} sh - 


Rancher Installation

    helm repo add rancher-latest https://releases.rancher.com/server-charts/latest



