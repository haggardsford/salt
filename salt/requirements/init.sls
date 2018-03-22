essential-packages:
  pkg.installed:
    - pkgs:
      - bash
      - git
      - tmux
      - zsh
      - curl

app-packages:
  pkg.installed:
    pkgs:
      - python3-pip 
      - python3-dev 
      - nginx
      
