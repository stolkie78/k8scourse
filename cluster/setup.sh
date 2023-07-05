#!/bin/bash
sudo apt-get install -y vagrant git virtualbox
git clone https://github.com/stolkie78/vagrant-kubeadm-kubernetes
cd vagrant-kubeadm-kubernetes
vagrant up

