from pytest import fixture


def pytest_addoption(parser):
    parser.addoption("--name", action="store")
    parser.addoption("--passw", action="store")

@fixture()
def name(request):
    return request.config.getoption("--name")
@fixture()
def passw(request):
  return request.config.getoption("--passw")
