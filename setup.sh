sudo snap install microk8s --channel=1.29/stable --classic

sudo usermod -a -G microk8s ${USER}
sudo chown -f -R ${USER} ~/.kube
newgrp microk8s

microk8s enable dns ingress dashboard cert-manager metallb prometheus rbac hostpath-storage

microk8s enable community

microk8s kubectl get nodes

alias kctl='microk8s kubectl'

echo 'new alias is -> kctl <-> microk8s kubectl'

kctl get po -A


