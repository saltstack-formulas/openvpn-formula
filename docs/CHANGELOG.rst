
Changelog
=========

`0.16.7 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.6...v0.16.7>`_ (2021-01-14)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **_mapdata:** ensure map data is directly under ``values`` (\ `0f96d55 <https://github.com/saltstack-formulas/openvpn-formula/commit/0f96d554e7fef9d467b023ac24e8de45f0355766>`_\ )

Tests
^^^^^


* **_mapdata:** update for ``_mapdata/init.sls`` change (\ `241d349 <https://github.com/saltstack-formulas/openvpn-formula/commit/241d349f3a63ddea03ec0692df8b9ca61abb452c>`_\ )

`0.16.6 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.5...v0.16.6>`_ (2020-12-23)
------------------------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **map:** use top-level ``values:`` key in ``map.jinja`` dumps (\ `132e38a <https://github.com/saltstack-formulas/openvpn-formula/commit/132e38afd496b3e75b8e117c6c8468d00e6e1ea5>`_\ )

`0.16.5 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.4...v0.16.5>`_ (2020-12-22)
------------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **commitlint:** ensure ``upstream/master`` uses main repo URL [skip ci] (\ `f15efd1 <https://github.com/saltstack-formulas/openvpn-formula/commit/f15efd16b04fa54bfd808431b1bbd645b74dd9bf>`_\ )
* **gitlab-ci:** add ``rubocop`` linter (with ``allow_failure``\ ) [skip ci] (\ `901af81 <https://github.com/saltstack-formulas/openvpn-formula/commit/901af81f2bdb9962bf5f1806c26faee9598fde6a>`_\ )
* **gitlab-ci:** use GitLab CI as Travis CI replacement (\ `01cd86a <https://github.com/saltstack-formulas/openvpn-formula/commit/01cd86afa7d26b86507cf3ee894b9d4d42fa94f0>`_\ )
* **kitchen+gitlab:** update for new pre-salted images [skip ci] (\ `a0fdc61 <https://github.com/saltstack-formulas/openvpn-formula/commit/a0fdc618b009180a67f33a634699bc34e8ed163c>`_\ )

Tests
^^^^^


* **_mapdata:** fix existing verification files (\ `b61d904 <https://github.com/saltstack-formulas/openvpn-formula/commit/b61d904e9ad95d94cbaf589d2db9b2a324fc9602>`_\ )
* **_mapdata:** generate remaining verification files (\ `97ccbb3 <https://github.com/saltstack-formulas/openvpn-formula/commit/97ccbb303f10a23ae741c3c5af9da6a5307ba7e3>`_\ )
* **map:** standardise ``map.jinja`` verification (\ `a755b4d <https://github.com/saltstack-formulas/openvpn-formula/commit/a755b4d28202f9b55c25ac616157a7f959947abd>`_\ )

`0.16.4 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.3...v0.16.4>`_ (2020-10-30)
------------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `740ba4e <https://github.com/saltstack-formulas/openvpn-formula/commit/740ba4e80e01a724b7833ee6b3d7e66740ced795>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `95bbd5e <https://github.com/saltstack-formulas/openvpn-formula/commit/95bbd5eee34dd7ae36642ea38f2fc388c385cb30>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `92e02f2 <https://github.com/saltstack-formulas/openvpn-formula/commit/92e02f2b549ed599786bb08562dc4bc60df84c49>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `44e040d <https://github.com/saltstack-formulas/openvpn-formula/commit/44e040d3a143c7d3a2ad6805ae1f42e261bb7f32>`_\ )
* avoid ``init_environment`` failing due to saltstack/salt\ `#57628 <https://github.com/saltstack-formulas/openvpn-formula/issues/57628>`_ (\ `398932b <https://github.com/saltstack-formulas/openvpn-formula/commit/398932b8332b701b6a1430018629d097b2f41155>`_\ )

Tests
^^^^^


* **map:** verify ``map.jinja`` dump using ``_mapdata`` state (\ `ecac1b1 <https://github.com/saltstack-formulas/openvpn-formula/commit/ecac1b107f8a5309b803cb7fe41d1802b427b5fe>`_\ )

`0.16.3 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.2...v0.16.3>`_ (2020-06-10)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **tap-adapter.ps1:** work with alternate name ``Local Area Connection`` (\ `372b3b6 <https://github.com/saltstack-formulas/openvpn-formula/commit/372b3b6d80ef5ede742961bca44d726d16249646>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `0aa9fd6 <https://github.com/saltstack-formulas/openvpn-formula/commit/0aa9fd6d93533d824f4c6d144474d6721dd1bca6>`_\ )
* **github:** add Windows testing using Actions (\ `2d4b79c <https://github.com/saltstack-formulas/openvpn-formula/commit/2d4b79c5f8afe73eeeef187e63d9613bbf7bd793>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `6eb1b44 <https://github.com/saltstack-formulas/openvpn-formula/commit/6eb1b4437df9e2b8bb3171f8811bcf1d091113d9>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `9e7aa34 <https://github.com/saltstack-formulas/openvpn-formula/commit/9e7aa34a499b30eab737295ae4649e510365deab>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `80930cd <https://github.com/saltstack-formulas/openvpn-formula/commit/80930cdb479fb9f2eef7a0044b93e08fabb1d804>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `4099f15 <https://github.com/saltstack-formulas/openvpn-formula/commit/4099f15a1440bf7d9dfde707137593d9cf495d02>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `5900915 <https://github.com/saltstack-formulas/openvpn-formula/commit/5900915e5b86cdad1fdca9163873e1fd9ee44f98>`_\ )

`0.16.2 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.1...v0.16.2>`_ (2019-12-16)
------------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `ed6b7f0 <https://github.com/saltstack-formulas/openvpn-formula/commit/ed6b7f0c0d6a9171eadca2ffbc3682e24a3e346b>`_\ )

Tests
^^^^^


* add test for auth-nocache option (\ `79c1055 <https://github.com/saltstack-formulas/openvpn-formula/commit/79c10556dee2431d93ce9d678d002ec1036d219b>`_\ )

`0.16.1 <https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.0...v0.16.1>`_ (2019-12-06)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **auth_nocache:** fix typo in client template (\ `c8f0971 <https://github.com/saltstack-formulas/openvpn-formula/commit/c8f0971d148be9efb8405ff7eef5bbe4eeae9ea8>`_\ ), closes `#125 <https://github.com/saltstack-formulas/openvpn-formula/issues/125>`_

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
