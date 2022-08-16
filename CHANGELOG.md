# Changelog

## [1.0.5](https://github.com/saltstack-formulas/openvpn-formula/compare/v1.0.4...v1.0.5) (2022-08-16)


### Continuous Integration

* update `pre-commit` configuration inc. for pre-commit.ci [skip ci] ([887c91b](https://github.com/saltstack-formulas/openvpn-formula/commit/887c91bf6301f63d577a163eba89a04e47e590a6))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([f7343ef](https://github.com/saltstack-formulas/openvpn-formula/commit/f7343ef1332c7331ff62373b01e3e302121a72fb))
* **vagrant:** use `linked_clone` at all times (inc. CI) [skip ci] ([8b53ede](https://github.com/saltstack-formulas/openvpn-formula/commit/8b53ededd0c5e35238aaf52967cd2da28a2eed4e))


### Tests

* **_mapdata:** add verification file for `ubuntu-22` [skip ci] ([9d94d17](https://github.com/saltstack-formulas/openvpn-formula/commit/9d94d17b96439b4c3171f62413b37db244e995a3))
* **system.rb:** add support for `mac_os_x` [skip ci] ([4269cbb](https://github.com/saltstack-formulas/openvpn-formula/commit/4269cbbb6b0032950d14f92160c04007f9738d34))
* **windows:** fix failing tests by installing specific pkg version ([3cdbd08](https://github.com/saltstack-formulas/openvpn-formula/commit/3cdbd0840f8b35ca1b010ffb6dce4e55dd3bffa7))

## [1.0.4](https://github.com/saltstack-formulas/openvpn-formula/compare/v1.0.3...v1.0.4) (2022-02-21)


### Bug Fixes

* **libmapstack:** allow mapping by booleans and numbers ([b16659b](https://github.com/saltstack-formulas/openvpn-formula/commit/b16659bdc49d2da00d45408fd122a965179fd7fe))
* **libsaltcli+libmatchers:** ensure Salt client API detection [skip ci] ([920f23c](https://github.com/saltstack-formulas/openvpn-formula/commit/920f23c896d357fad8a651dcd61a549f12c80a11))


### Code Refactoring

* **map.jinja:** standardise v5 structure [skip ci] ([6e786a9](https://github.com/saltstack-formulas/openvpn-formula/commit/6e786a91e53e1a9209a5584c41a211fc39d1de15))


### Continuous Integration

* update linters to latest versions [skip ci] ([6667e73](https://github.com/saltstack-formulas/openvpn-formula/commit/6667e739a996c9c4bdcab96b98297a02c3cc5a97))
* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([15820aa](https://github.com/saltstack-formulas/openvpn-formula/commit/15820aa6d20c25d80a297b8131a51ab39bc030b8))
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] ([4b58f5f](https://github.com/saltstack-formulas/openvpn-formula/commit/4b58f5f0d1abdd2ef8f2795a1f128cf2d3406d59))
* **gemfile+lock:** use `ssf` customised `inspec` repo [skip ci] ([31e9e91](https://github.com/saltstack-formulas/openvpn-formula/commit/31e9e911ae1192dd42bdd866d320b8e001649d27))
* **kitchen:** move `provisioner` block & update `run_command` [skip ci] ([1e195ed](https://github.com/saltstack-formulas/openvpn-formula/commit/1e195ed8ac68418790eb53d8ee571d1af62f0950))
* **kitchen+ci:** update with `3004` pre-salted images/boxes [skip ci] ([7390292](https://github.com/saltstack-formulas/openvpn-formula/commit/7390292911e528d2fd7aef26593358b5565f1589))
* **kitchen+ci:** update with latest `3003.2` pre-salted images [skip ci] ([b20ac04](https://github.com/saltstack-formulas/openvpn-formula/commit/b20ac04ee45d52e2fb864db069b2f308df08059e))
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] ([307d728](https://github.com/saltstack-formulas/openvpn-formula/commit/307d728b035511446b210bf77d244586de283fe8))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([9887264](https://github.com/saltstack-formulas/openvpn-formula/commit/9887264547753c1fb880d2ca9ee1e6d8bf97573c))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([ea87444](https://github.com/saltstack-formulas/openvpn-formula/commit/ea87444e74ff83528164672f7def8e4aa66e0d7b))
* **proxy:** replace deprecated Windows `2016` with `2022` [skip ci] ([227b032](https://github.com/saltstack-formulas/openvpn-formula/commit/227b032eea3216d0908743fada5745c450659c83))
* **proxy+windows:** fix setting up WinRM [skip ci] ([3d5404a](https://github.com/saltstack-formulas/openvpn-formula/commit/3d5404ac86bc1d0cdd540894b0eb74de13050c85))
* **windows:** use Salt version `3004` [skip ci] ([e388c90](https://github.com/saltstack-formulas/openvpn-formula/commit/e388c908bfae4635ffd9362858ac54a067c47527))
* add Debian 11 Bullseye & update `yamllint` configuration [skip ci] ([af4e5a9](https://github.com/saltstack-formulas/openvpn-formula/commit/af4e5a98cdb8cee0e1c060d3ecdf9ed454e5f5a3))


### Styles

* **libsaltcli:** fix comments to jinja comments [skip ci] ([755b28e](https://github.com/saltstack-formulas/openvpn-formula/commit/755b28e1708eee3e5a8de601ac51b04c180aa7f3))


### Tests

* **_mapdata:** add verification file for `debian-11` [skip ci] ([e0d499e](https://github.com/saltstack-formulas/openvpn-formula/commit/e0d499e1e4675493f78547d9d03d2f51d62eab83))
* **system:** add `build_platform_codename` [skip ci] ([3eeb52b](https://github.com/saltstack-formulas/openvpn-formula/commit/3eeb52b8e327f6f3ca141e1840317ae027a8833d))

## [1.0.3](https://github.com/saltstack-formulas/openvpn-formula/compare/v1.0.2...v1.0.3) (2021-06-15)


### Bug Fixes

* **tumbleweed:** ensure `openssl` package is also installed ([69be26f](https://github.com/saltstack-formulas/openvpn-formula/commit/69be26fb00c83a0665ff830808ac3a7b22b84f02))


### Continuous Integration

* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([a6d8b8e](https://github.com/saltstack-formulas/openvpn-formula/commit/a6d8b8e8f150844bbd792496d0c48512f576b762))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([83a97f4](https://github.com/saltstack-formulas/openvpn-formula/commit/83a97f4373c52582f75e2d606448e2201fb434e5))
* **vagrant:** add FreeBSD 13.0 [skip ci] ([50b3c9f](https://github.com/saltstack-formulas/openvpn-formula/commit/50b3c9f13efad64e6c2c08ef84ae926ec7ea8747))
* **vagrant:** add Windows 10 pre-salted box [skip ci] ([085ca0c](https://github.com/saltstack-formulas/openvpn-formula/commit/085ca0c6fdf16f74798270771386500681f36e12))
* **vagrant:** use pre-salted boxes & conditional local settings [skip ci] ([e110c28](https://github.com/saltstack-formulas/openvpn-formula/commit/e110c28eb4d3905f76d9b2b63cb56c130b5529fd))


### Documentation

* **map.jinja:** fix `rst-lint` violation [skip ci] ([7887fb4](https://github.com/saltstack-formulas/openvpn-formula/commit/7887fb4ff6beb6cd80bb44865de82d37209c22b3))
* **readme:** fix heading [skip ci] ([556e93a](https://github.com/saltstack-formulas/openvpn-formula/commit/556e93ad2985f1f995c644779870db316c285a36))
* **readme:** fix platform name location for Vagrant [skip ci] ([74e5dc0](https://github.com/saltstack-formulas/openvpn-formula/commit/74e5dc073aa1a61babbe87f429a44590855c7000))
* **readme:** generalise Vagrant section to include `*BSD` [skip ci] ([6794d64](https://github.com/saltstack-formulas/openvpn-formula/commit/6794d643a6a065d59baaf6899a2e8eac9f01c57c))

## [1.0.2](https://github.com/saltstack-formulas/openvpn-formula/compare/v1.0.1...v1.0.2) (2021-03-26)


### Continuous Integration

* enable Vagrant-based testing using GitHub Actions ([290c8b4](https://github.com/saltstack-formulas/openvpn-formula/commit/290c8b48e405e03c224ec28496aa135e1d336810))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([deb3ac1](https://github.com/saltstack-formulas/openvpn-formula/commit/deb3ac1d7bf8f52dc92f3f0b09009e669558f1cb))
* **windows:** use `kitchen.windows.yml` ([76491c4](https://github.com/saltstack-formulas/openvpn-formula/commit/76491c4cb0fd12d8a44a9ffd7d5a3c66f768db0c))


### Tests

* **_mapdata:** add verification file for Windows 2016 Server ([dda60f0](https://github.com/saltstack-formulas/openvpn-formula/commit/dda60f07ec955db038a0eaaaa842c0f8bc08a1d1))
* standardise use of `share` suite & `_mapdata` state [skip ci] ([c247b83](https://github.com/saltstack-formulas/openvpn-formula/commit/c247b83f47161e59289617467957f8e07f472ff1))

## [1.0.1](https://github.com/saltstack-formulas/openvpn-formula/compare/v1.0.0...v1.0.1) (2021-02-22)


### Continuous Integration

* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([a69b613](https://github.com/saltstack-formulas/openvpn-formula/commit/a69b6134e6a0b8a77aed6078e24394ba236808a0))
* **github+windows:** install and use Chef embedded Ruby ([f1cc1b9](https://github.com/saltstack-formulas/openvpn-formula/commit/f1cc1b9e2676dbae6366518788beece49de30f8c))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([8eeb429](https://github.com/saltstack-formulas/openvpn-formula/commit/8eeb4295f193cdaca85aea3954f7194c36dfe2b6))


### Tests

* **kitchen+windows:** remove no longer needed workaround ([470f4d6](https://github.com/saltstack-formulas/openvpn-formula/commit/470f4d6eb77e6281356d518b5ae83230f2ae1657))

# [1.0.0](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.8...v1.0.0) (2021-02-14)


### Continuous Integration

* **pre-commit:** update hook for `rubocop` [skip ci] ([4d77262](https://github.com/saltstack-formulas/openvpn-formula/commit/4d772627d43eb1ce051fc6549639ca826fad9481))


### Features

* **map:** the YAML files must not use any Jinja ([4db7d6f](https://github.com/saltstack-formulas/openvpn-formula/commit/4db7d6f6b33ea6741a5bdc67265c51cefde61a75))
* **map:** update to v5 `map.jinja` ([c28acb9](https://github.com/saltstack-formulas/openvpn-formula/commit/c28acb9c0cf9125d955095d35fc1023113186509))


### BREAKING CHANGES

* **map:** `map.jinja` now export a generic `mapdata` variable
* **map:** The parameters per grains are now under `openvpn/parameters/`

## [0.16.8](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.7...v0.16.8) (2021-01-29)


### Continuous Integration

* **kitchen+gitlab:** update for new pre-salted images ([0b96901](https://github.com/saltstack-formulas/openvpn-formula/commit/0b969018bacdd565170528636f4b976466ef1cae))


### Tests

* **services_spec:** add test for `be_installed` ([fe77843](https://github.com/saltstack-formulas/openvpn-formula/commit/fe7784331d6fe29f5e8312627b9ba40d14497fb9))
* **tumbleweed:** add map verification file ([ff5a9cf](https://github.com/saltstack-formulas/openvpn-formula/commit/ff5a9cfbfa7a98d8742351224bac239b79c4528c))

## [0.16.7](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.6...v0.16.7) (2021-01-14)


### Bug Fixes

* **_mapdata:** ensure map data is directly under `values` ([0f96d55](https://github.com/saltstack-formulas/openvpn-formula/commit/0f96d554e7fef9d467b023ac24e8de45f0355766))


### Tests

* **_mapdata:** update for `_mapdata/init.sls` change ([241d349](https://github.com/saltstack-formulas/openvpn-formula/commit/241d349f3a63ddea03ec0692df8b9ca61abb452c))

## [0.16.6](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.5...v0.16.6) (2020-12-23)


### Code Refactoring

* **map:** use top-level `values:` key in `map.jinja` dumps ([132e38a](https://github.com/saltstack-formulas/openvpn-formula/commit/132e38afd496b3e75b8e117c6c8468d00e6e1ea5))

## [0.16.5](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.4...v0.16.5) (2020-12-22)


### Continuous Integration

* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([f15efd1](https://github.com/saltstack-formulas/openvpn-formula/commit/f15efd16b04fa54bfd808431b1bbd645b74dd9bf))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([901af81](https://github.com/saltstack-formulas/openvpn-formula/commit/901af81f2bdb9962bf5f1806c26faee9598fde6a))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([01cd86a](https://github.com/saltstack-formulas/openvpn-formula/commit/01cd86afa7d26b86507cf3ee894b9d4d42fa94f0))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([a0fdc61](https://github.com/saltstack-formulas/openvpn-formula/commit/a0fdc618b009180a67f33a634699bc34e8ed163c))


### Tests

* **_mapdata:** fix existing verification files ([b61d904](https://github.com/saltstack-formulas/openvpn-formula/commit/b61d904e9ad95d94cbaf589d2db9b2a324fc9602))
* **_mapdata:** generate remaining verification files ([97ccbb3](https://github.com/saltstack-formulas/openvpn-formula/commit/97ccbb303f10a23ae741c3c5af9da6a5307ba7e3))
* **map:** standardise `map.jinja` verification ([a755b4d](https://github.com/saltstack-formulas/openvpn-formula/commit/a755b4d28202f9b55c25ac616157a7f959947abd))

## [0.16.4](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.3...v0.16.4) (2020-10-30)


### Continuous Integration

* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([740ba4e](https://github.com/saltstack-formulas/openvpn-formula/commit/740ba4e80e01a724b7833ee6b3d7e66740ced795))
* **pre-commit:** add to formula [skip ci] ([95bbd5e](https://github.com/saltstack-formulas/openvpn-formula/commit/95bbd5eee34dd7ae36642ea38f2fc388c385cb30))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([92e02f2](https://github.com/saltstack-formulas/openvpn-formula/commit/92e02f2b549ed599786bb08562dc4bc60df84c49))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([44e040d](https://github.com/saltstack-formulas/openvpn-formula/commit/44e040d3a143c7d3a2ad6805ae1f42e261bb7f32))
* avoid `init_environment` failing due to saltstack/salt[#57628](https://github.com/saltstack-formulas/openvpn-formula/issues/57628) ([398932b](https://github.com/saltstack-formulas/openvpn-formula/commit/398932b8332b701b6a1430018629d097b2f41155))


### Tests

* **map:** verify `map.jinja` dump using `_mapdata` state ([ecac1b1](https://github.com/saltstack-formulas/openvpn-formula/commit/ecac1b107f8a5309b803cb7fe41d1802b427b5fe))

## [0.16.3](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.2...v0.16.3) (2020-06-10)


### Bug Fixes

* **tap-adapter.ps1:** work with alternate name `Local Area Connection` ([372b3b6](https://github.com/saltstack-formulas/openvpn-formula/commit/372b3b6d80ef5ede742961bca44d726d16249646))


### Continuous Integration

* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([0aa9fd6](https://github.com/saltstack-formulas/openvpn-formula/commit/0aa9fd6d93533d824f4c6d144474d6721dd1bca6))
* **github:** add Windows testing using Actions ([2d4b79c](https://github.com/saltstack-formulas/openvpn-formula/commit/2d4b79c5f8afe73eeeef187e63d9613bbf7bd793))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([6eb1b44](https://github.com/saltstack-formulas/openvpn-formula/commit/6eb1b4437df9e2b8bb3171f8811bcf1d091113d9))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([9e7aa34](https://github.com/saltstack-formulas/openvpn-formula/commit/9e7aa34a499b30eab737295ae4649e510365deab))
* **travis:** add notifications => zulip [skip ci] ([80930cd](https://github.com/saltstack-formulas/openvpn-formula/commit/80930cdb479fb9f2eef7a0044b93e08fabb1d804))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([4099f15](https://github.com/saltstack-formulas/openvpn-formula/commit/4099f15a1440bf7d9dfde707137593d9cf495d02))
* **workflows/commitlint:** add to repo [skip ci] ([5900915](https://github.com/saltstack-formulas/openvpn-formula/commit/5900915e5b86cdad1fdca9163873e1fd9ee44f98))

## [0.16.2](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.1...v0.16.2) (2019-12-16)


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([ed6b7f0](https://github.com/saltstack-formulas/openvpn-formula/commit/ed6b7f0c0d6a9171eadca2ffbc3682e24a3e346b))


### Tests

* add test for auth-nocache option ([79c1055](https://github.com/saltstack-formulas/openvpn-formula/commit/79c10556dee2431d93ce9d678d002ec1036d219b))

## [0.16.1](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.16.0...v0.16.1) (2019-12-06)


### Bug Fixes

* **auth_nocache:** fix typo in client template ([c8f0971](https://github.com/saltstack-formulas/openvpn-formula/commit/c8f0971d148be9efb8405ff7eef5bbe4eeae9ea8)), closes [#125](https://github.com/saltstack-formulas/openvpn-formula/issues/125)

# [0.16.0](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.4...v0.16.0) (2019-11-29)


### Continuous Integration

* **travis:** apply changes from build config validation [skip ci] ([ea3336a](https://github.com/saltstack-formulas/openvpn-formula/commit/ea3336af6f3657d24c0657173f07ed224140a46b))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([bb43f31](https://github.com/saltstack-formulas/openvpn-formula/commit/bb43f31450ccb48601ef61620a42c9904c502e0d))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([667bc1f](https://github.com/saltstack-formulas/openvpn-formula/commit/667bc1f04b7e96bd2c5cdce8a91d76552d34c884))
* **travis:** run `shellcheck` during lint job [skip ci] ([9d63e36](https://github.com/saltstack-formulas/openvpn-formula/commit/9d63e36fa618df6d966ad1278bfa64153db0a9fe))
* **travis:** use build config validation (beta) [skip ci] ([d2f7fe2](https://github.com/saltstack-formulas/openvpn-formula/commit/d2f7fe24a19033b8db907be89f184b26b128b326))


### Features

* **auth_nocache:** support for auth-nocache ([c21b7f5](https://github.com/saltstack-formulas/openvpn-formula/commit/c21b7f52cc0ce24c96cf1b9173a9fda9e3eb7ae7))

## [0.15.4](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.3...v0.15.4) (2019-11-06)


### Bug Fixes

* **adapters:** call `adapters.sls` in `init.sls` ([3ebcbe9](https://github.com/saltstack-formulas/openvpn-formula/commit/3ebcbe93f8245fb435c3e9af91853930683e16b1))
* **dhparams:** allow generating Diffie Hellman parameters on Windows ([3802024](https://github.com/saltstack-formulas/openvpn-formula/commit/3802024a69d5e4008d192084d10858511f3dca4d))
* **release.config.js:** use full commit hash in commit link [skip ci] ([81d922d](https://github.com/saltstack-formulas/openvpn-formula/commit/81d922d7a3053c309e0e8f965825063df576921e))


### Continuous Integration

* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([83e00e1](https://github.com/saltstack-formulas/openvpn-formula/commit/83e00e1c4d64e86f79b2fa9cb6e8be0490cdb83e))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([06a09f2](https://github.com/saltstack-formulas/openvpn-formula/commit/06a09f29e187f9b01865b582eff944c30e294302))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([4eb9d3b](https://github.com/saltstack-formulas/openvpn-formula/commit/4eb9d3bed2df51360822db639c2085414bfc13e3))
* **travis:** merge `rubocop` linter into main `lint` job ([9f82955](https://github.com/saltstack-formulas/openvpn-formula/commit/9f82955081169661780b8a236c1b20da15bf9aa2))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([d465b4f](https://github.com/saltstack-formulas/openvpn-formula/commit/d465b4f6063ab78864cf2f25a26c339e74b64c18))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([70dab6c](https://github.com/saltstack-formulas/openvpn-formula/commit/70dab6c4ee9d9d69f80c81ae314df0d97c79114e))


### Documentation

* add steps required for testing using Vagrant ([0229d14](https://github.com/saltstack-formulas/openvpn-formula/commit/0229d1446f89d0ebe44f70b1834a0a9aa8cb68e1))
* **contributing:** remove to use org-level file instead [skip ci] ([8703eb5](https://github.com/saltstack-formulas/openvpn-formula/commit/8703eb50a6ea7505716b2350e34b88f894a4e725))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([a72049f](https://github.com/saltstack-formulas/openvpn-formula/commit/a72049f738005c95548db7e3b87847d8ce741eda))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([26838e5](https://github.com/saltstack-formulas/openvpn-formula/commit/26838e5ccd0400390bb3a2eb29741d36a8992ac3))


### Tests

* **windows:** add local testing of Windows using Vagrant/Virtualbox ([96c3001](https://github.com/saltstack-formulas/openvpn-formula/commit/96c300125dfa86c67d14e09f772b453eddde7c84))

## [0.15.3](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.2...v0.15.3) (2019-10-10)


### Bug Fixes

* **config.sls:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/openvpn-formula/commit/1b3f7f6))
* **ifconfig_pool_persist.sls:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/openvpn-formula/commit/6969083))
* **map.jinja:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/openvpn-formula/commit/eabfc57))


### Continuous Integration

* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/openvpn-formula/commit/b76dcc9))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/openvpn-formula/commit/0db9651))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/openvpn-formula/commit/75d7aaa))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/openvpn-formula/commit/d7f1607))

## [0.15.2](https://github.com/saltstack-formulas/openvpn-formula/compare/v0.15.1...v0.15.2) (2019-09-25)


### Bug Fixes

* **service:** stop old service only if name is different to new service ([1724dfd](https://github.com/saltstack-formulas/openvpn-formula/commit/1724dfd)), closes [#119](https://github.com/saltstack-formulas/openvpn-formula/issues/119)


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([e94c9ba](https://github.com/saltstack-formulas/openvpn-formula/commit/e94c9ba))

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
