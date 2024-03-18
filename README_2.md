### Example login:
https://<YOUR-İP>:10443/#/login

### CLUSTERING (<https://thenewstack.io/add-nodes-to-your-microk8s-kubernetes-cluster/>)
192.168.1.107 kubecontroller </br>
192.168.1.108 k8sworkernode1 </br>
192.168.1.109 k8sworkernode2 </br>
192.168.1.110 k8sworkernode3 </br>

### for controller
```bash
sudo firewall-cmd --add-port={25000/tcp,16443/tcp,12379/tcp,10250/tcp,10255/tcp,10257/tcp,10259/tcp} --permanent
sudo firewall-cmd --reload
```

### for worker
```bash
sudo firewall-cmd --add-port={25000/tcp,10250/tcp,10255/tcp} --permanent
sudo firewall-cmd --reload
 ```
### for all machine

```bash
sudo firewall-cmd --add-port=19001/tcp --permanent
sudo firewall-cmd --reload
```
  
```bash
microk8s add-node
```

```bash
microk8s kubectl get nodes
```     