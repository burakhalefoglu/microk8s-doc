# microk8s-doc<https://microk8s.io/docs>

## access to server

```shell
ssh -L 59000:localhost:5901 -C -N -l kubecontroller 192.168.1.107 -p 2222
```

## To start microk8s

```shell
bash start.sh
```

### static ip (<https://www.rosehosting.com/blog/how-to-configure-static-ip-address-on-ubuntu-22-04/>)

### Clustering the microk8s(<https://thenewstack.io/add-nodes-to-your-microk8s-kubernetes-cluster/> or <https://microk8s.io/docs/high-availability>)

### port forward to the dashboard(<https://microk8s.io/docs/addon-dashboard>)

port forward  example -> kubectl port-forward [resource-type/][name-of-target-resource] [local-port]:[target-resource-port] -n [namespace]

```shell
kctl port-forward service/kubernetes-dashboard 10443:443 -n kube-system
```

### access to the dashboard

```shell
echo "to access kubernetes dashboard -> https://<Your IP Address>:10443/"
echo "to get token from kubernetes dashboard ->"

lxc exec microk8s -- microk8s dashboard-proxy

```

### To start storage for kubernetes

```shell
bash storage.sh
```

### To start the monitoring tools

```shell
bash monitoring.sh
```

### For Security(<https://www.fosslinux.com/100675/ubuntu-security-best-practices-for-securing-your-system.htm> <https://www.linuxjournal.com/content/ubuntu-server-security-best-practices>)
