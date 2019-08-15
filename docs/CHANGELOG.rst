
Changelog
=========

`0.14.0 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.13.1...v0.14.0>`_ (2019-08-15)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **network_manager_networks:** properly override port (\ `1d58ec6 <https://github.com/saltstack-formulas/openvpn-formula/commit/1d58ec6>`_\ )
* **network_manager_networks:** reduced pillar.get calls (\ `7ee9eed <https://github.com/saltstack-formulas/openvpn-formula/commit/7ee9eed>`_\ )

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `4355ac6 <https://github.com/saltstack-formulas/openvpn-formula/commit/4355ac6>`_\ )

`0.13.1 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.13.0...v0.13.1>`_ (2019-07-19)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **centos:** install OpenSSL on CentOS (\ `7e4c8d6 <https://github.com/saltstack-formulas/openvpn-formula/commit/7e4c8d6>`_\ )
* **centos-6:** has only *one* service 'openvpn' (\ `3d5723d <https://github.com/saltstack-formulas/openvpn-formula/commit/3d5723d>`_\ )
* **config:** script-security is a common option (\ `b1b482c <https://github.com/saltstack-formulas/openvpn-formula/commit/b1b482c>`_\ )
* **config:** set tls-auth and tls-crypt independentyl of ta_content (\ `d3787b6 <https://github.com/saltstack-formulas/openvpn-formula/commit/d3787b6>`_\ )
* **debian-ish:** root owns the logs (\ `3276d3b <https://github.com/saltstack-formulas/openvpn-formula/commit/3276d3b>`_\ )
* **fedora:** honor working directory & service name (\ `4f8e899 <https://github.com/saltstack-formulas/openvpn-formula/commit/4f8e899>`_\ )
* **freebsd:** load if_tap module (\ `d63581a <https://github.com/saltstack-formulas/openvpn-formula/commit/d63581a>`_\ )
* **jinja:** don't call pillar.get (\ `33b98f5 <https://github.com/saltstack-formulas/openvpn-formula/commit/33b98f5>`_\ )
* **logging:** set replace=False and add dependencies for log files (\ `9b71fcf <https://github.com/saltstack-formulas/openvpn-formula/commit/9b71fcf>`_\ )
* **macros:** use openvpn/macros.jinja (\ `637387e <https://github.com/saltstack-formulas/openvpn-formula/commit/637387e>`_\ )
* **service:** use OS-specific service name in multi-service setups (\ `b16756c <https://github.com/saltstack-formulas/openvpn-formula/commit/b16756c>`_\ )
* **specs:** use boolean operator (\ `89fa956 <https://github.com/saltstack-formulas/openvpn-formula/commit/89fa956>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **cleanup:** dropped obsolete opensuse-leap-15 workaround (\ `1e1719d <https://github.com/saltstack-formulas/openvpn-formula/commit/1e1719d>`_\ )
* **kitchen:** add kitchen file + testinfra (\ `9c5ee26 <https://github.com/saltstack-formulas/openvpn-formula/commit/9c5ee26>`_\ )
* **kitchen:** rename pillar (\ `4122fc0 <https://github.com/saltstack-formulas/openvpn-formula/commit/4122fc0>`_\ )
* **kitchen:** test/config/pillars: add jinja for user on debian >= 9 (\ `3c7f947 <https://github.com/saltstack-formulas/openvpn-formula/commit/3c7f947>`_\ )
* **kitchen+travis:** modify matrix to include ``develop`` platform (\ `91b5798 <https://github.com/saltstack-formulas/openvpn-formula/commit/91b5798>`_\ )
* **specs:** increased readability (\ `b2c9cf1 <https://github.com/saltstack-formulas/openvpn-formula/commit/b2c9cf1>`_\ )
* **test data:** moved Pillar test data (\ `2fff1ee <https://github.com/saltstack-formulas/openvpn-formula/commit/2fff1ee>`_\ )
* **testing:** added bin/kitchen (\ `15bea7b <https://github.com/saltstack-formulas/openvpn-formula/commit/15bea7b>`_\ )
* **travis:** exclude Fedora 29 from Travis CI (\ `4a1f9ed <https://github.com/saltstack-formulas/openvpn-formula/commit/4a1f9ed>`_\ )
* **travis:** test based on template-formula and `#98 <https://github.com/saltstack-formulas/openvpn-formula/issues/98>`_ (\ `b9daf9b <https://github.com/saltstack-formulas/openvpn-formula/commit/b9daf9b>`_\ )
