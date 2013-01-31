# ansible for desktop

A simple and quick way to deploy every desktop/laptop configuration.

Tested only for Debian GNU/Linux >= Wheezy

## Feautures

- debian base configuration (APT conf and sources, disable dash, ecc)
- install favourites apps
- configure sudo, NTP and localization
- easy management of dotfiles (zsh[OMZ], emacs, vim, ruby, ecc)
- Xorg with: i3wm + gnome-core
- Virtualization: virtualbox apt source
- backup home and /etc with duplicity

## Installation

### manual mode

environment export:

    # ansible installation paths
    export ANSIBLE_HOME=$HOME/projects/devops/ansible
    export ANSIBLE_PLAY_DESK=$HOME/projects/devops/playbooks/desktop
    export ANSIBLE_CONFIG=$HOME/Private/ansible_private/ansible.cfg

    # ansible exec paths (insert this in .zshrc or .profile)
    export PATH=$ANSIBLE_HOME/bin:$PATH
    export PYTHONPATH=$ANSIBLE_HOME/lib:$PYTHONPATH
    export ANSIBLE_LIBRARY=$ANSIBLE_HOME/library
    export MANPATH=$ANSIBLE_HOME/docs/man:$MANPATH

install required software

    sudo aptitude install -y python2.6 python-paramiko python-yaml python-jinja2 python-apt

clone ansible repository

    git clone git://github.com/ansible/ansible.git $ANSIBLE_HOME

clone playbooks

    git clone git://github.com/kalos/ansible-desktop.git $ANSIBLE_PLAY_DESK



### pseudo-auto (TODO: improve auto-install a-la oh-my-zsh)
    curl -O https://raw.github.com/kalos/ansible-desktop/master/setup.sh
    vim setup.sh  # edit installation paths
    ./setup.sh


## Usage

deploy zsh with oh-my-zsh and my customization

edit vars.yml :

    user: kalos
    user_home: /home/$user
    repo_omz_custom: git@github.com:kalos/zsh-omz-config.git

exec ansible

    ansible-playbook --tags zsh setup.yml

deploy desktop with i3wm + gnome-core

    ansible-playbook --tags desktop,i3 setup.yml

deploy emacs-snapshot

    ansible-playbook --tags emacs setup.yml
