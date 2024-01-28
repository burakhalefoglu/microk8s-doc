# microk8s-doc

## To start microk8s

```shell
bash start.sh
```

### Clustering the microk8s(<https://thenewstack.io/add-nodes-to-your-microk8s-kubernetes-cluster/> or <https://microk8s.io/docs/high-availability>)

### port forward to the dashboard(<https://microk8s.io/docs/addon-dashboard>)

port forward  example -> kubectl port-forward [resource-type/][name-of-target-resource] [local-port]:[target-resource-port] -n [namespace]

```shell
kctl port-forward service/kubernetes-dashboard 10443:443 -n kube-system
```

### access to the dashboard

```shell
echo "to access kubernetes dashboard -> https://127.0.0.1:10443/"
echo "to get token from kubernetes dashboard ->"

kctl create token default
```

### To start storage for kubernetes

```shell
bash storage.sh
```

### To start the monitoring tools

```shell
bash monitoring.sh
```
