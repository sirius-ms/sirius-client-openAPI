import pytest


def pytest_addoption(parser):
    parser.addoption("--name", action="store")
    parser.addoption("--passw", action="store")

@pytest.fixture(scope="session", autouse=True)
def command_line_args(request):
    args = {}
    args['name'] = request.config.getoption('--name')
    args['passw'] = request.config.getoption('--passw')
    return args