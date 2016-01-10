fetch-dwm:
  cmd.run:
    - name: |
        cd /tmp
        wget -c http://git.suckless.org/dwm/snapshot/dwm-6.1.tar.bz2
        tar xf dwm-6.1.tar.bz2
        cd dwm-6.1
        wget https://raw.githubusercontent.com/nbirnel/dwm-config/master/config.h
        make
        make install
    - cwd: /tmp
    - shell: /bin/sh
    - timeout: 300
    - unless: test -x /usr/local/bin/dwm
