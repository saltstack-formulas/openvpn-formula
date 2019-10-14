.. _readme:

openvpn-formula
===============


|img_travis| |img_sr|

.. |img_travis| image:: https://travis-ci.com/saltstack-formulas/openvpn-formula.svg?branch=master
   :alt: Travis CI Build Status
   :scale: 100%
   :target: https://travis-ci.com/saltstack-formulas/openvpn-formula
.. |img_sr| image:: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
   :alt: Semantic Release
   :scale: 100%
   :target: https://github.com/semantic-release/semantic-release

Formula to install and configure openvpn server and client.

.. contents:: **Table of Contents**

General notes
-------------

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you are interested in writing or contributing to formulas, please pay attention to the `Writing Formula Section
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.

Contributing to this repo
-------------------------

**Commit message formatting is significant!!**

Please see `How to contribute <https://github.com/saltstack-formulas/.github/blob/master/CONTRIBUTING.rst>`_ for more details.


Available states
----------------

.. contents::
    :local:

``openvpn``
^^^^^^^^^^^

Installs OpenVPN.

``openvpn.config``
^^^^^^^^^^^^^^^^^^

Configures OpenVPN client and server. Multiple clients and servers are possible.

``openvpn.gui``
^^^^^^^^^^^^^^^

Configures OpenVPN GUI (Windows only). Sets global registry settings as described `here <https://github.com/OpenVPN/openvpn-gui/#registry-values-affecting-the-openvpn-gui-operation>`_.

``openvpn.adapters``
^^^^^^^^^^^^^^^^^^^^

Manages TAP-Windows device adapters (Windows only). Ensures that any devices specified with ``dev_node`` in pillar exist.

``openvpn.ifconfig_pool_persist``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Installs and configures an ifconfig_pool_persist file. Used to assign host IPs.

``openvpn.network_manager_networks``
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Don't setup a OpenVPN client service, but add ready-to-use NetworkManager configurations.

Examples
--------

See *openvpn/pillar.example*.

Notes
-----

This formula does can optionally deploy certificates and keys, but does not generate them. This must be done manually or with another formula.

Testing
-------

Linux testing is done with ``kitchen-salt``.

Requirements
^^^^^^^^^^^^

* Ruby
* Docker

.. code-block:: bash

   $ gem install bundler
   $ bundle install
   $ bin/kitchen test [platform]

Where ``[platform]`` is the platform name defined in ``kitchen.yml``,
e.g. ``debian-9-2019-2-py3``.

``bin/kitchen converge``
^^^^^^^^^^^^^^^^^^^^^^^^

Creates the docker instance and runs the ``openvpn`` main state, ready for testing.

``bin/kitchen verify``
^^^^^^^^^^^^^^^^^^^^^^

Runs the ``inspec`` tests on the actual instance.

``bin/kitchen destroy``
^^^^^^^^^^^^^^^^^^^^^^^

Removes the docker instance.

``bin/kitchen test``
^^^^^^^^^^^^^^^^^^^^

Runs all of the stages above in one go: i.e. ``destroy`` + ``converge`` + ``verify`` + ``destroy``.

``bin/kitchen login``
^^^^^^^^^^^^^^^^^^^^^

Gives you SSH access to the instance for manual testing.
