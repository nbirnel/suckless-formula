{% from "suckless/map.jinja" import suckless with context %}

fetch-dwm:
  cmd.run:
    - name: |
        cd /tmp
        wget -c http://git.suckless.org/dwm/snapshot/dwm-{{ suckless.dwm.version }}.tar.bz2
        tar xf dwm-{{ suckless.dwm.version }}.tar.bz2
        cd dwm-{{ suckless.dwm.version }}
        wget https://raw.githubusercontent.com/nbirnel/dwm-config/master/config.h
        make
        make install
    - cwd: /tmp
    - shell: /bin/sh
    - timeout: 300
    - unless: test -x /usr/local/bin/dwm
  require:
    - suckless.xinerama
