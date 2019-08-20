#!/bin/bash
##############################################################################################################
SCRIPT_NAME="install-kubernetes-cluster.sh"
##############################################################################################################
SCRIPT_VERSION="v0.02a"
COMPANY="XXX"
ORIGINAL_AUTHOR="Orlando Hehl Rebelo dos Santos"
CHANGE_AUTHOR="Orlando Hehl Rebelo dos Santos"
DATE_INI="27-07-2019"
DATE_END="27-07-2019"
##############################################################################################################


USER=ubuntu

curl -fsSL https://get.docker.com | bash

usermod -aG docker $USER

apt-get update && apt-get install -y apt-transport-https

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

apt-get update

apt-get install -y kubelet kubeadm kubectl



#For the Master
kubeadm init --apiserver-advertise-address $(hostname -i)


#To start using your cluster, you need to run the following as a regular user:
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config


#Install network plugin on the marter
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
