{%- from "pactmaker_zammad/map.jinja" import config with context %}

pactmaker_zammad_systemd_service:
  file.managed:
    - name: /etc/systemd/system/pactmaker_zammad.service
    - source: salt://{{ slspath }}/files/pactmaker_zammad.service.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644


pactmaker_zammad_enable_service:
  service.enabled:
    - name: pactmaker_zammad

pactmaker_zammad_start_service:
  service.running:
    - name: pactmaker_zammad

pactmaker_zammad:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: {{ config.location }}/.env
      - file: {{ config.location }}/docker-compose.yml