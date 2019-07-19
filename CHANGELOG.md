# Changelog

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
