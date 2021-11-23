#!/usr/bin/env bash
set -e

echo "Install some common tools for further installation"
if [ "${DISTRO}" == "centos" ] ; then
  yum install -y vim wget net-tools bzip2 python3
  wget https://download-ib01.fedoraproject.org/pub/epel/7/aarch64/Packages/w/wmctrl-1.07-12.el7.aarch64.rpm
  yum localinstall -y wmctrl*.rpm
  rm wmctrl*.rpm
else
  apt-get update
  apt-get install -y vim wget net-tools locales bzip2 wmctrl software-properties-common
  apt-get clean -y

  echo "generate locales für en_US.UTF-8"
  locale-gen en_US.UTF-8
fi

if [ "$DISTRO" = "ubuntu" ]; then
  #update mesa to latest
  add-apt-repository ppa:kisak/kisak-mesa
  apt full-upgrade -y
fi
