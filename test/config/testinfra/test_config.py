def test_myserver1_service(host):
    service = host.service("openvpn@myserver1.service")
    assert service.is_running
    assert service.is_enabled

def test_myserver1_log(host):
    assert host.file("/var/log/openvpn/myserver1.log").contains("Initialization Sequence Completed")

def test_myclient1_service(host):
    service = host.service("openvpn@myclient1.service")
    assert service.is_running
    assert service.is_enabled

def test_myclient1_log(host):
    assert host.file("/var/log/openvpn/myclient1.log").contains("Initialization Sequence Completed")
