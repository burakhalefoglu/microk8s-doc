# microk8s-doc

## Terminal codes

### To start microk8s

```shell
bash setup.sh
```

### port forward to the dashboard

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
