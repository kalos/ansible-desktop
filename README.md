# ansible for desktop

Un modo semplice e veloce per replicare tutte le configurazioni del vostro desktop/laptop ed essere subito operativi.


## Installation

### manual way

#### export environments:

    # ansible installation paths
    export ANSIBLE_HOME=$HOME/projects/devops/ansible
    export ANSIBLE_PLAY_DESK=$HOME/projects/devops/playbooks/desktop
    export ANSIBLE_CONFIG=$HOME/Private/ansible_private/ansible.cfg

    # ansible exec paths (insert this in .zshrc or .profile)
    export PATH=$ANSIBLE_HOME/bin:$PATH
    export PYTHONPATH=$ANSIBLE_HOME/lib:$PYTHONPATH
    export ANSIBLE_LIBRARY=$ANSIBLE_HOME/library
    export MANPATH=$ANSIBLE_HOME/docs/man:$MANPATH

#### install required software
    sudo aptitude install -y python2.6 python-paramiko python-yaml python-jinja2 python-apt

#### clone ansible repository
    git clone git://github.com/ansible/ansible.git $ANSIBLE_HOME

#### clone playbooks
    git clone git://github.com/kalos/ansible-desktop.git $ANSIBLE_PLAY_DESK



### pseudo-automatic
    curl -O setup.sh https://github.com/kalos/ansible-desktop/raw/master/setup.sh && $EDITOR setup.sh


## Usage


