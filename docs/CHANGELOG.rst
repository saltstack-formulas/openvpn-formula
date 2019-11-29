
Changelog
=========

`0.16.0 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.4...v0.16.0>`_ (2019-11-29)
------------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** apply changes from build config validation [skip ci] (\ `ea3336a <https://github.com/saltstack-formulas/openvpn-formula/commit/ea3336af6f3657d24c0657173f07ed224140a46b>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `bb43f31 <https://github.com/saltstack-formulas/openvpn-formula/commit/bb43f31450ccb48601ef61620a42c9904c502e0d>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `667bc1f <https://github.com/saltstack-formulas/openvpn-formula/commit/667bc1f04b7e96bd2c5cdce8a91d76552d34c884>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `9d63e36 <https://github.com/saltstack-formulas/openvpn-formula/commit/9d63e36fa618df6d966ad1278bfa64153db0a9fe>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `d2f7fe2 <https://github.com/saltstack-formulas/openvpn-formula/commit/d2f7fe24a19033b8db907be89f184b26b128b326>`_\ )

Features
^^^^^^^^


* **auth_nocache:** support for auth-nocache (\ `c21b7f5 <https://github.com/saltstack-formulas/openvpn-formula/commit/c21b7f52cc0ce24c96cf1b9173a9fda9e3eb7ae7>`_\ )

`0.15.4 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.3...v0.15.4>`_ (2019-11-06)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **adapters:** call ``adapters.sls`` in ``init.sls`` (\ `3ebcbe9 <https://github.com/saltstack-formulas/openvpn-formula/commit/3ebcbe93f8245fb435c3e9af91853930683e16b1>`_\ )
* **dhparams:** allow generating Diffie Hellman parameters on Windows (\ `3802024 <https://github.com/saltstack-formulas/openvpn-formula/commit/3802024a69d5e4008d192084d10858511f3dca4d>`_\ )
* **release.config.js:** use full commit hash in commit link [skip ci] (\ `81d922d <https://github.com/saltstack-formulas/openvpn-formula/commit/81d922d7a3053c309e0e8f965825063df576921e>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `83e00e1 <https://github.com/saltstack-formulas/openvpn-formula/commit/83e00e1c4d64e86f79b2fa9cb6e8be0490cdb83e>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `06a09f2 <https://github.com/saltstack-formulas/openvpn-formula/commit/06a09f29e187f9b01865b582eff944c30e294302>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `4eb9d3b <https://github.com/saltstack-formulas/openvpn-formula/commit/4eb9d3bed2df51360822db639c2085414bfc13e3>`_\ )
* **travis:** merge ``rubocop`` linter into main ``lint`` job (\ `9f82955 <https://github.com/saltstack-formulas/openvpn-formula/commit/9f82955081169661780b8a236c1b20da15bf9aa2>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `d465b4f <https://github.com/saltstack-formulas/openvpn-formula/commit/d465b4f6063ab78864cf2f25a26c339e74b64c18>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ `70dab6c <https://github.com/saltstack-formulas/openvpn-formula/commit/70dab6c4ee9d9d69f80c81ae314df0d97c79114e>`_\ )

Documentation
^^^^^^^^^^^^^


* add steps required for testing using Vagrant (\ `0229d14 <https://github.com/saltstack-formulas/openvpn-formula/commit/0229d1446f89d0ebe44f70b1834a0a9aa8cb68e1>`_\ )
* **contributing:** remove to use org-level file instead [skip ci] (\ `8703eb5 <https://github.com/saltstack-formulas/openvpn-formula/commit/8703eb50a6ea7505716b2350e34b88f894a4e725>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `a72049f <https://github.com/saltstack-formulas/openvpn-formula/commit/a72049f738005c95548db7e3b87847d8ce741eda>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `26838e5 <https://github.com/saltstack-formulas/openvpn-formula/commit/26838e5ccd0400390bb3a2eb29741d36a8992ac3>`_\ )

Tests
^^^^^


* **windows:** add local testing of Windows using Vagrant/Virtualbox (\ `96c3001 <https://github.com/saltstack-formulas/openvpn-formula/commit/96c300125dfa86c67d14e09f772b453eddde7c84>`_\ )

`0.15.3 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.2...v0.15.3>`_ (2019-10-10)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **config.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/openvpn-formula/commit/1b3f7f6>`_\ )
* **ifconfig_pool_persist.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/openvpn-formula/commit/6969083>`_\ )
* **map.jinja:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/openvpn-formula/commit/eabfc57>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ ` <https://github.com/saltstack-formulas/openvpn-formula/commit/b76dcc9>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ ` <https://github.com/saltstack-formulas/openvpn-formula/commit/0db9651>`_\ )
* **platform:** add ``arch-base-latest`` (commented out for now) [skip ci] (\ ` <https://github.com/saltstack-formulas/openvpn-formula/commit/75d7aaa>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/openvpn-formula/commit/d7f1607>`_\ )

`0.15.2 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.1...v0.15.2>`_ (2019-09-25)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **service:** stop old service only if name is different to new service (\ `1724dfd <https://github.com/saltstack-formulas/openvpn-formula/commit/1724dfd>`_\ ), closes `#119 <https://github.com/saltstack-formulas/openvpn-formula/issues/119>`_

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ `e94c9ba <https://github.com/saltstack-formulas/openvpn-formula/commit/e94c9ba>`_\ )

`0.15.1 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.0...v0.15.1>`_ (2019-09-21)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **repo:** provide EPEL repo configuration for ``Amazon Linux-2`` (\ `bfb29bd <https://github.com/saltstack-formulas/openvpn-formula/commit/bfb29bd>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* use ``dist: bionic`` & apply ``opensuse-leap-15`` SCP error workaround (\ `5e02797 <https://github.com/saltstack-formulas/openvpn-formula/commit/5e02797>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ `a437b3b <https://github.com/saltstack-formulas/openvpn-formula/commit/a437b3b>`_\ )

`0.15.0 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.14.2...v0.15.0>`_ (2019-09-07)
------------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **auth_gen_token:** support for auth-gen-token (\ `333edd7 <https://github.com/saltstack-formulas/openvpn-formula/commit/333edd7>`_\ )
* **syslog:** support for syslog (\ `24b370c <https://github.com/saltstack-formulas/openvpn-formula/commit/24b370c>`_\ )

`0.14.2 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.14.1...v0.14.2>`_ (2019-09-06)
------------------------------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* **pillar.example:** update with quoted "yes" for comp-lzo (\ `1b49b24 <https://github.com/saltstack-formulas/openvpn-formula/commit/1b49b24>`_\ )

`0.14.1 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.14.0...v0.14.1>`_ (2019-09-01)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **config:** configurable distinction between server and client services (\ `18c4c4a <https://github.com/saltstack-formulas/openvpn-formula/commit/18c4c4a>`_\ )
* **config:** sub-mappings for client and server (\ `b30b23d <https://github.com/saltstack-formulas/openvpn-formula/commit/b30b23d>`_\ )
* **service:** make sure the now obsolete systemd services are disabled (\ `2dfae46 <https://github.com/saltstack-formulas/openvpn-formula/commit/2dfae46>`_\ )
* **service:** removed trailing whitespace (\ `85d2458 <https://github.com/saltstack-formulas/openvpn-formula/commit/85d2458>`_\ )
* **test:** drop ' then$' (\ `62c2f70 <https://github.com/saltstack-formulas/openvpn-formula/commit/62c2f70>`_\ )
* **test:** dropped redundant permission checks (\ `9c3ea71 <https://github.com/saltstack-formulas/openvpn-formula/commit/9c3ea71>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** replace EOL pre-salted images (\ `2577535 <https://github.com/saltstack-formulas/openvpn-formula/commit/2577535>`_\ )

Tests
^^^^^


* **kitchen:** debian and ubuntu use different paths now (\ `dfd784e <https://github.com/saltstack-formulas/openvpn-formula/commit/dfd784e>`_\ )
* **pillar:** set 'status' to fix kitchen tests (\ `07bb5b6 <https://github.com/saltstack-formulas/openvpn-formula/commit/07bb5b6>`_\ )

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
