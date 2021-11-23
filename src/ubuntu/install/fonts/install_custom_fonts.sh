#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Installing ttf-wqy-zenhei"
if [ "$DISTRO" = centos ]; then
  wget https://centos.pkgs.org/7/centos-aarch64/wqy-zenhei-fonts-0.9.46-11.el7.noarch.rpm.html
  yum localinstall -y wqy-zenhei-fonts*.rpm
  rm wqy-zenhei-fonts*.rpm
else
  apt-get install -y ttf-wqy-zenhei
fi
