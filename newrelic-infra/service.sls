# Ensure the New Relic Infrastructure service is running,
# and restart if the package or configuration changes

# This file is intended to be included by init.

newrelic-infra-service:
  service.running:
    - name: newrelic-infra
    - enable: True
    - reload: True
    - watch:
      - file: newrelic-infra-config
      - pkg: newrelic-infra-package
