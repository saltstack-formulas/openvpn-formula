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

Installs and configures openvpn client and server. Multiple clients and servers are possible.

Example
=======

See *openvpn/pillar.example*.

Notes
=====

This formula does not deploy certificates and keys. This must be done manually or with another formula.
