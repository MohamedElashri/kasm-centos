#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Installing ttf-wqy-zenhei"
if [ "$DISTRO" = centos ]; then
  wget http://mirror.centos.org/altarch/7/os/aarch64/Packages/wqy-zenhei-fonts-0.9.46-11.el7.noarch.rpm
  yum localinstall -y wqy-zenhei-fonts*.rpm
  rm wqy-zenhei-fonts*.rpm
else
  apt-get install -y ttf-wqy-zenhei
fi
