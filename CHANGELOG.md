# Changelog

## [0.15.1](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.0...v0.15.1) (2019-09-21)


### Bug Fixes

* **repo:** provide EPEL repo configuration for `Amazon Linux-2` ([bfb29bd](https://github.com/saltstack-formulas/openvpn-formula/commit/bfb29bd))


### Continuous Integration

* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([5e02797](https://github.com/saltstack-formulas/openvpn-formula/commit/5e02797))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([a437b3b](https://github.com/saltstack-formulas/openvpn-formula/commit/a437b3b))

# [0.15.0](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.14.2...v0.15.0) (2019-09-07)


### Features

* **auth_gen_token:** support for auth-gen-token ([333edd7](https://github.com/saltstack-formulas/openvpn-formula/commit/333edd7))
* **syslog:** support for syslog ([24b370c](https://github.com/saltstack-formulas/openvpn-formula/commit/24b370c))

## [0.14.2](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.14.1...v0.14.2) (2019-09-06)


### Documentation

* **pillar.example:** update with quoted "yes" for comp-lzo ([1b49b24](https://github.com/saltstack-formulas/openvpn-formula/commit/1b49b24))

## [0.14.1](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.14.0...v0.14.1) (2019-09-01)


### Bug Fixes

* **config:** configurable distinction between server and client services ([18c4c4a](https://github.com/saltstack-formulas/openvpn-formula/commit/18c4c4a))
* **config:** sub-mappings for client and server ([b30b23d](https://github.com/saltstack-formulas/openvpn-formula/commit/b30b23d))
* **service:** make sure the now obsolete systemd services are disabled ([2dfae46](https://github.com/saltstack-formulas/openvpn-formula/commit/2dfae46))
* **service:** removed trailing whitespace ([85d2458](https://github.com/saltstack-formulas/openvpn-formula/commit/85d2458))
* **test:** drop ' then$' ([62c2f70](https://github.com/saltstack-formulas/openvpn-formula/commit/62c2f70))
* **test:** dropped redundant permission checks ([9c3ea71](https://github.com/saltstack-formulas/openvpn-formula/commit/9c3ea71))


### Continuous Integration

* **kitchen+travis:** replace EOL pre-salted images ([2577535](https://github.com/saltstack-formulas/openvpn-formula/commit/2577535))


### Tests

* **kitchen:** debian and ubuntu use different paths now ([dfd784e](https://github.com/saltstack-formulas/openvpn-formula/commit/dfd784e))
* **pillar:** set 'status' to fix kitchen tests ([07bb5b6](https://github.com/saltstack-formulas/openvpn-formula/commit/07bb5b6))

# [0.14.0](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.13.1...v0.14.0) (2019-08-15)


### Bug Fixes

* **network_manager_networks:** properly override port ([1d58ec6](https://github.com/saltstack-formulas/openvpn-formula/commit/1d58ec6))
* **network_manager_networks:** reduced pillar.get calls ([7ee9eed](https://github.com/saltstack-formulas/openvpn-formula/commit/7ee9eed))


### Features

* **yamllint:** include for this repo and apply rules throughout ([4355ac6](https://github.com/saltstack-formulas/openvpn-formula/commit/4355ac6))

## [0.13.1](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.13.0...v0.13.1) (2019-07-19)


### Bug Fixes

* **centos:** install OpenSSL on CentOS ([7e4c8d6](https://github.com/saltstack-formulas/openvpn-formula/commit/7e4c8d6))
* **centos-6:** has only _one_ service 'openvpn' ([3d5723d](https://github.com/saltstack-formulas/openvpn-formula/commit/3d5723d))
* **config:** script-security is a common option ([b1b482c](https://github.com/saltstack-formulas/openvpn-formula/commit/b1b482c))
* **config:** set tls-auth and tls-crypt independentyl of ta_content ([d3787b6](https://github.com/saltstack-formulas/openvpn-formula/commit/d3787b6))
* **debian-ish:** root owns the logs ([3276d3b](https://github.com/saltstack-formulas/openvpn-formula/commit/3276d3b))
* **fedora:** honor working directory & service name ([4f8e899](https://github.com/saltstack-formulas/openvpn-formula/commit/4f8e899))
* **freebsd:** load if_tap module ([d63581a](https://github.com/saltstack-formulas/openvpn-formula/commit/d63581a))
* **jinja:** don't call pillar.get ([33b98f5](https://github.com/saltstack-formulas/openvpn-formula/commit/33b98f5))
* **logging:** set replace=False and add dependencies for log files ([9b71fcf](https://github.com/saltstack-formulas/openvpn-formula/commit/9b71fcf))
* **macros:** use openvpn/macros.jinja ([637387e](https://github.com/saltstack-formulas/openvpn-formula/commit/637387e))
* **service:** use OS-specific service name in multi-service setups ([b16756c](https://github.com/saltstack-formulas/openvpn-formula/commit/b16756c))
* **specs:** use boolean operator ([89fa956](https://github.com/saltstack-formulas/openvpn-formula/commit/89fa956))


### Continuous Integration

* **cleanup:** dropped obsolete opensuse-leap-15 workaround ([1e1719d](https://github.com/saltstack-formulas/openvpn-formula/commit/1e1719d))
* **kitchen:** add kitchen file + testinfra ([9c5ee26](https://github.com/saltstack-formulas/openvpn-formula/commit/9c5ee26))
* **kitchen:** rename pillar ([4122fc0](https://github.com/saltstack-formulas/openvpn-formula/commit/4122fc0))
* **kitchen:** test/config/pillars: add jinja for user on debian >= 9 ([3c7f947](https://github.com/saltstack-formulas/openvpn-formula/commit/3c7f947))
* **kitchen+travis:** modify matrix to include `develop` platform ([91b5798](https://github.com/saltstack-formulas/openvpn-formula/commit/91b5798))
* **specs:** increased readability ([b2c9cf1](https://github.com/saltstack-formulas/openvpn-formula/commit/b2c9cf1))
* **test data:** moved Pillar test data ([2fff1ee](https://github.com/saltstack-formulas/openvpn-formula/commit/2fff1ee))
* **testing:** added bin/kitchen ([15bea7b](https://github.com/saltstack-formulas/openvpn-formula/commit/15bea7b))
* **travis:** exclude Fedora 29 from Travis CI ([4a1f9ed](https://github.com/saltstack-formulas/openvpn-formula/commit/4a1f9ed))
* **travis:** test based on template-formula and [#98](https://github.com/saltstack-formulas/openvpn-formula/issues/98) ([b9daf9b](https://github.com/saltstack-formulas/openvpn-formula/commit/b9daf9b))
