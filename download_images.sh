#!/bin/bash

set -o errexit
set -o nounset

KUBE_VERSION=v1.10.2
KUBE_PAUSE_VERSION=3.1
ETCD_VERSION=3.1.12
DNS_VERSION=1.14.8

GCR_URL=gcr.io/google_containers
ALIYUN_URL=registry.cn-hangzhou.aliyuncs.com/google_containers

images=("kube-proxy-amd64:${KUBE_VERSION}" "kube-scheduler-amd64:${KUBE_VERSION}" "kube-controller-manager-amd64:${KUBE_VERSION}" "kube-apiserver-amd64:${KUBE_VERSION}" "pause-amd64:${KUBE_PAUSE_VERSION}" "etcd-amd64:${ETCD_VERSION}" "k8s-dns-sidecar-amd64:${DNS_VERSION}"
 "k8s-dns-kube-dns-amd64:${DNS_VERSION}" "k8s-dns-dnsmasq-nanny-amd64:${DNS_VERSION}" )

for imageName in ${images[@]} ; do
  docker pull $ALIYUN_URL/$imageName
  docker tag  $ALIYUN_URL/$imageName $GCR_URL/$imageName
  docker rmi  $ALIYUN_URL/$imageName
done
