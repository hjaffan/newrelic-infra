newrelic-infra-repo:
  {% if grains['os_family'] == 'RedHat' -%}
  pkgrepo.managed:
    - humanname: newrelic-infra
    - name: newrelic-infra
    - baseurl: https://download.newrelic.com/infrastructure_agent/linux/yum/el/$releasever/$basearch
    - gpgkey: https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg
    - gpgcheck: 1
    - repo_gpgcheck: 1
    - require_in:
      - pkg: newrelic-infra-package
  {% elif grains['os_family'] == 'Debian' -%}
  pkgrepo.managed:
    - humanname: newrelic-infra
    - name: deb https://download.newrelic.com/infrastructure_agent/linux/apt {{ grains.get('oscodename') }} main
    - dist: {{ grains.get('oscodename') }}
    - file: /etc/apt/sources.list.d/newrelic-infra.list
    - gpgcheck: 1
    - key_url: https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg
    - require_in:
      - pkg: newrelic-infra-package
  {% endif %}
