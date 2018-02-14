newrelic-infra 
==========================================================================

SaltStack formula for installing and configuring NewRelic Infrastructure.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/topics/development/conventions/formulas.html>`_.

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

