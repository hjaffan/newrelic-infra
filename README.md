newrelic-infra 
==============

SaltStack formula for installing and configuring NewRelic Infrastructure.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Supported Operating Systems
===========================

* rpm-based distros
* deb-based distros
* Use [salt-winrepo](https://github.com/saltstack/salt-winrepo-ng/blob/master/newrelic-infra.sls)
  for Windows.

Available states
================

.. contents::
    :local:

``newrelic-infra``
------------------

Includes:

* ``newrelic-infra.repo``
* ``newrelic-infra.installed``
* ``newrelic-infra.config``
* ``newrelic-infra.service``

``newrelic-infra.repo``
----------------------------

Configures the newrelic-infra package repository.

``newrelic-infra.installed``
----------------------------

Installs newrelic-infra.

``newrelic-infra.config``
----------------------------

Applies [pillar](pillar.example) data to the configuration file ``/etc/newrelic-infra.yml``.

The only required entry in your [pillar file](pillar.example) is the license key.

``newrelic-infra.service``
----------------------------

Enables and runs the ``newrelic-infra`` service.

