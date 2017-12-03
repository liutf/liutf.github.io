# Dockerfile for building CentOS images
FROM       centos:centos6.7
ENV TZ "Asia/Shanghai"
ENV TERM xterm
# Run yum clean all && yum makecache
# Run yum install -y pwgen openssh-server git  supervisor python-pip
# RUN yum install -y wget curl tar bzip2  vim-enhanced sudo yum-utils 
Run yum install -y npm git

Run git clone https://liutf:qq1029393@git.coding.net/liutf/liutf.git

Run cd /liutf && git pull
Run npm install hexo-cli -g
Run npm install hexo-generator-sitemap --save
Run npm install hexo-generator-baidu-sitemap@0.1.1 --save
Run npm install hexo-generator-feed --save
Run cd /liutf && npm install
EXPOSE 4000
EXPOSE 22
ENTRYPOINT cd /liutf &&git fetch --all &&git reset --hard origin/master &&hexo clean &&hexo g &&hexo d