import pytest
import testinfra
from testinfra.backend.base import BaseBackend
from testinfra.backend import parse_hostspec
import os

SSH_CONFIG = '.ssh-config'
SSH_CONFIG_MAP = {
    'KITCHEN_HOSTNAME': 'Hostname',
    'KITCHEN_USERNAME': 'User',
    'KITCHEN_PORT': 'Port',
    'KITCHEN_SSH_KEY': 'IdentityFile',
}

@pytest.fixture
def host(request, tmpdir_factory):
    # Override the TestinfraBackend fixture,
    # all testinfra fixtures (i.e. modules) depend on it.
    tmpdir = tmpdir_factory.mktemp(str(id(request)))
    image, kw = parse_hostspec(os.environ['KITCHEN_INSTANCE'])
    ssh_config = ['Host {0}'.format(os.environ['KITCHEN_INSTANCE'])]
    for key in SSH_CONFIG_MAP.keys():
        if key in os.environ:
            ssh_config.append('{0} {1}'.format(SSH_CONFIG_MAP[key], os.environ[key]))
    ssh_config_file = tmpdir.join(SSH_CONFIG)
    ssh_config_file.write('\n'.join(ssh_config))

    # Return a dynamic created backend
    host = testinfra.host.get_host(os.environ['KITCHEN_INSTANCE'], ssh_config=str(ssh_config_file), sudo=True)
    host.backend.get_hostname = lambda: image
    return host
