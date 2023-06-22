#!/bin/bash
mkdir ${HOME}/Kubernetes && cd ${HOME}/Kubernetes
sudo apt-get install -y vagrant git virtualbox
git clone https://github.com/stolkie78/vagrant-kubeadm-kubernetes $HOME/Kubernetes/vagrant-kubeadm-kubernetes
cd ${HOME}/Kubernetes/vagrant-kubeadm-kubernetes
vagrant up

mkdir ${HOME}/Kubernetes/tmp
cd ${HOME}/Kubernetes/tmp
wget https://vstsagentpackage.azureedge.net/agent/3.220.5/vsts-agent-linux-x64-3.220.5.tar.gz && mkdir ${HOME}/Kubernetes/myagent && cd ${HOME}/Kubernetes/myagent && tar zxvf ${HOME}/tmp/vsts-agent-linux-x64-3.220.5.tar.gz && ./config.sh && rm -f ${HOME}/tmp/vsts-agent-linux-x64-3.220.5.tar.gz