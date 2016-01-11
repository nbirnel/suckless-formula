{% from "suckless/map.jinja" import suckless with context %}

xinerama-package:
  pkg:
    - installed
    - name: {{ suckless.xinerama }}


