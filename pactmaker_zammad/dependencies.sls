{%- from "pactmaker_zammad/map.jinja" import config with context %}

pactmaker_python-pip:
  pkg.installed:
  - name: python-pip

pactmaker_install_compose:
  pip.installed:
  - name: docker-compose
  - require:
    - pkg: python-pip

{{ config.location }}:
  file.directory:
    - mode: 755
    - makedirs: True
