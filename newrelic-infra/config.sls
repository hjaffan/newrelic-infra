# Ensure the New Relic Infrastructure configuration is present.
# You will need, at minimum, the license key.

# This file is intended to be included by init.

newrelic-infra-config:
  file.managed:
    - name: /etc/newrelic-infra.yml
    - user: root
    - group: root
    - template: jinja
    - contents: |
        {% for key, value in salt['pillar.get']("newrelic:config:base").items() %}{{ key }}: {{ value }}
        {% endfor %}
        {% if salt['pillar.get']("newrelic:config:custom_attributes") %}
        custom_attributes:
        {% for key, value in salt['pillar.get']("newrelic:config:custom_attributes").items() %}  {{ key }}: {{ value }}
        {% endfor %}
        {% endif %}
    - require_in:
      - pkg: newrelic-infra-package
