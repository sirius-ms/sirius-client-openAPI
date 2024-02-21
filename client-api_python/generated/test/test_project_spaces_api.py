# coding: utf-8

"""
    SIRIUS Nightsky API

    OpenAPI REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.The provided OpenAPI specification allows to autogenerate clients for different programming languages.

    The version of the OpenAPI document: 0.9
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.api.project_spaces_api import ProjectSpacesApi


class TestProjectSpacesApi(unittest.TestCase):
    """ProjectSpacesApi unit test stubs"""

    def setUp(self) -> None:
        self.api = ProjectSpacesApi()

    def tearDown(self) -> None:
        pass

    def test_close_project_space(self) -> None:
        """Test case for close_project_space

        Close project-space and remove it from application.
        """
        pass

    def test_create_project_space(self) -> None:
        """Test case for create_project_space

        Create and open a new project-space at given location and make it accessible via the given projectId.
        """
        pass

    def test_get_project_space(self) -> None:
        """Test case for get_project_space

        Get project space info by its projectId.
        """
        pass

    def test_get_project_spaces(self) -> None:
        """Test case for get_project_spaces

        List all opened project spaces.
        """
        pass

    def test_open_project_space(self) -> None:
        """Test case for open_project_space

        Open an existing project-space and make it accessible via the given projectId.
        """
        pass


if __name__ == '__main__':
    unittest.main()
