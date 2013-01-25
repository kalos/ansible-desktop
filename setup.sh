#!/bin/bash

export ANSIBLE_HOME=$HOME/projects/devops/ansible
export ANSIBLE_PLAY_DESK=$HOME/projects/devops/playbooks/desktop
export ANSIBLE_CONFIG=$HOME/Private/ansible_private/ansible.cfg

export PATH=$ANSIBLE_HOME/bin:$PATH
export PYTHONPATH=$ANSIBLE_HOME/lib:$PYTHONPATH
export ANSIBLE_LIBRARY=$ANSIBLE_HOME/library:$MANPATH
export MANPATH=$ANSIBLE_HOME/docs/man:$MANPATH

sudo aptitude install -y python2.6 python-paramiko python-yaml python-jinja2 python-apt
git clone git://github.com/ansible/ansible.git $ANSIBLE_HOME

git clone git@github.com:kalos/ansible-desktop.git $ANSIBLE_PLAY_DESK
cd $ANSIBLE_PLAY_DESK
ansible-playbook -v setup.yml
