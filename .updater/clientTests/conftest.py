import pytest


def pytest_addoption(parser):
    parser.addoption("--name", action="store")
    parser.addoption("--passw", action="store")

@pytest.fixture()
def name(request):
    return request.config.getoption("--name")
@pytest.fixture()
def passw(request):
  return request.config.getoption("--passw")
