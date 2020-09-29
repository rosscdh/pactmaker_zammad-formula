{%- from "pactmaker_zammad/map.jinja" import config with context %}

pactmaker_zammad_env_file:
  file.managed:
  - name: {{ config.location }}/.env
  - source: salt://pactmaker_zammad/files/.env.jinja2
  - makedirs: True
  - template: jinja

pactmaker_zammad_compose_file:
  file.managed:
  - name: {{ config.location }}/docker-compose.yml
  - source: salt://pactmaker_zammad/files/docker-compose.yml.jinja2
  - makedirs: True
  - template: jinja