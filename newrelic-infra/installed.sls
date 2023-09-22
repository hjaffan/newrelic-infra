# Ensure the New Relic Infrastructure package is installed

# This file is intended to be included by init.

newrelic-infra-package:
  pkg.installed:
    - name: newrelic-infra
