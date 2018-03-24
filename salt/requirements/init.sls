essential-packages:
  pkg.installed:
    - pkgs:
      - bash
      - git
      - tmux
      - zsh
      - curl

python-pip:
  pkg.installed:
    - pkgs:
      - python-pip

app-packages:
  pkg.installed:
    - pkgs:
      - python3-pip 
      - python3-dev 
      - nginx

flask:
  # Install using pip
  pip.installed:
    # The pip module we want to install
    - name: flask
    # Absolute path to a virtual environment directory or absolute path to a pip executable
    # We want to install python3 flask so we use pip3 here
    - bin_env: '/usr/bin/pip3'
    # Require python-pip state to be run before this one
    - require:
      - pkg: python-pip
uwsgi:
  # Install using pip
  pip.installed:
    # The pip module we want to install
    - name: uwsgi
    # Absolute path to a virtual environment directory or absolute path to a pip executable
    # We want to install python3 uwsgi so we use pip3 here
    - bin_env: '/usr/bin/pip3'
    # Require python-pip state to be run before this one
    - require:
      - pkg: python-pip

postgres:
  pkg.installed:
    pkgs:
      - postgresql
      - postgresql-contrib

postgres-adapter:
  # Install using pip
  pip.installed:
    # The pip module we want to install
    - name: psycopg2
    # Absolute path to a virtual environment directory or absolute path to a pip executable
    # We want to install python3 uwsgi so we use pip3 here
    - bin_env: '/usr/bin/pip3'
    # Require python-pip state to be run before this one
    - require:
      - pkg: python-pip

