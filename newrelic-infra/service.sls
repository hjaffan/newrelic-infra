newrelic-infra-service:
  service.running:
    - name: newrelic-infra
    - enable: True
    - reload: True
    - watch:
      - file: newrelic-infra-config
      - pkg: newrelic-infra-package
    - require:
      - pkg: newrelic-infra-package
