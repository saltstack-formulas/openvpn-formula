=======
openvpn
=======

Formula to install and configure openvpn server and client.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``openvpn``
--------

Installs OpenVPN.

``openvpn.config``
--------

Configures OpenVPN client and server. Multiple clients and servers are possible.

``openvpn.ifconfig_pool_persist``
---------------------------------

Installs and configures an ifconfig_pool_persist file. Used to assign host IPs.

Example
=======

See *openvpn/pillar.example*.

Notes
=====

This formula does can optionally deploy certificates and keys, but does not generate them. This must be done manually or with another formula.
