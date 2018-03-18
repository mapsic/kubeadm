# kubeadm init 所需docker镜像构建



所需镜像参考链接：

https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-init/

想知道google_containers里有哪些镜像，可以点击下面的链接查询：

https://console.cloud.google.com/gcr/images/google-containers/GLOBAL?project=google-containers

http://blog.csdn.net/andriy_dangli/article/details/79269348

安装文档

https://kubernetes.io/docs/setup/independent/install-kubeadm/#before-you-begin

初始化命令：

kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.3.127 --kubernetes-version=v1.9.4
