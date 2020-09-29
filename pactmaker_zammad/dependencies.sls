{%- from "pactmaker_zammad/map.jinja" import config with context %}

python-pip:
  pkg.installed

install_compose:
  pip.installed:
  - name: docker-compose
  - require:
    - pkg: python-pip

{{ config.location }}:
  file.directory:
    - mode: 755
    - makedirs: True