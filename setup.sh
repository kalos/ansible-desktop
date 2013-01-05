#!/bin/bash

ANSIBLE_DEST=$HOME/projects/devops/ansible/

sudo aptitude install -y python2.6 python-paramiko python-yaml python-jinja2 python-apt
git clone git://github.com/ansible/ansible.git $ANSIBLE_DEST


