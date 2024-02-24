# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest
import shutil

from PySirius.api_response import ApiResponse
from PySirius.api.projects_api import ProjectsApi
from PySirius.models.project_info import ProjectInfo
from PySirius.models.page_project_info import PageProjectInfo


class TestProjectsApi(unittest.TestCase):
    """ProjectsApi unit test stubs"""

    def setUp(self) -> None:
        self.api = ProjectsApi()


    def tearDown(self) -> None:
        pass


    def test_close_project_space(self) -> None:
        """Test case for close_project_space

        Close project-space and remove it from application.
        """
        project_id = "test_close_space_project"
        path_to_project = "test_close_project_space_dir"
        self.api.create_project_space(project_id, path_to_project)

        response = self.api.close_project_space_with_http_info(project_id)
        self.assertIsInstance(response, ApiResponse)
        self.assertEqual(response.dict().get('status_code'), 200)

        response = self.api.close_project_space_with_http_info('invalid_id')
        self.assertIsInstance(response, ApiResponse)
        self.assertEqual(response.dict().get('status_code'), 204)

        shutil.rmtree(path_to_project)


    def test_copy_project_space(self) -> None:
        """Test case for copy_project_space

        Move an existing (opened) project-space to another location.
        """
        project_id = "test_copy_space_project"
        path_to_project = "test_copy_project_space_dir"
        self.api.create_project_space(project_id, path_to_project)

        copy_project_id = "test_copy_project_space_copied"
        copy_path_to_project = "test_copy_project_space_dir_copied"
        response = self.api.copy_project_space(project_id, copy_project_id, copy_path_to_project)
        self.assertIsInstance(response, ProjectInfo)

        self.api.close_project_space(project_id)
        self.api.close_project_space(copy_project_id)
        shutil.rmtree(path_to_project)
        shutil.rmtree(copy_path_to_project)


    def test_create_project_space(self) -> None:
        """Test case for create_project_space

        Create and open a new project-space at given location and make it accessible via the given projectId.
        """
        project_id = "test_create_project_space"
        path_to_project = "test_create_project_space_dir"

        response = self.api.create_project_space(project_id, path_to_project)
        self.assertIsInstance(response, ProjectInfo)

        self.api.close_project_space(project_id)
        shutil.rmtree(path_to_project)


    def test_get_canopus_classy_fire_data(self) -> None:
        """Test case for get_canopus_classy_fire_data

        Get CANOPUS prediction vector definition for ClassyFire classes
        """
        project_id = "test_get_canopus_classy_fire_data"
        path_to_project = "test_get_canopus_classy_fire_data_dir"
        self.api.create_project_space(project_id, path_to_project)

        response = self.api.get_canopus_classy_fire_data(project_id, 0)
        self.assertIsInstance(response, str)

        self.api.close_project_space(project_id)
        shutil.rmtree(path_to_project)


    def test_get_canopus_npc_data(self) -> None:
        """Test case for get_canopus_npc_data

        Get CANOPUS prediction vector definition for NPC classes
        """
        project_id = "test_get_canopus_npc_data"
        path_to_project = "test_get_canopus_npc_data_dir"
        self.api.create_project_space(project_id, path_to_project)

        response = self.api.get_canopus_npc_data(project_id, 0)
        self.assertIsInstance(response, str)

        self.api.close_project_space(project_id)
        shutil.rmtree(path_to_project)


    def test_get_finger_id_data(self) -> None:
        """Test case for get_finger_id_data

        Get CSI:FingerID fingerprint (prediction vector) definition
        """
        project_id = "test_get_finger_id_data"
        path_to_project = "test_get_finger_id_data_dir"
        self.api.create_project_space(project_id, path_to_project)

        response = self.api.get_finger_id_data(project_id, 0)
        self.assertIsInstance(response, str)

        self.api.close_project_space(project_id)
        shutil.rmtree(path_to_project)


    def test_get_project_space(self) -> None:
        """Test case for get_project_space

        Get project space info by its projectId.
        """
        project_id = "test_get_project_space"
        path_to_project = "test_get_project_space_dir"
        self.api.create_project_space(project_id, path_to_project)

        response = self.api.get_project_space(project_id)
        self.assertIsInstance(response, ProjectInfo)

        self.api.close_project_space(project_id)
        shutil.rmtree(path_to_project)


    def test_get_project_spaces(self) -> None:
        """Test case for get_project_spaces

        List opened project spaces.
        """
        response = self.api.get_project_spaces()
        self.assertIsInstance(response, PageProjectInfo)


    def test_open_project_space(self) -> None:
        """Test case for open_project_space

        Open an existing project-space and make it accessible via the given projectId.
        """
        project_id = "test_open_project_space"
        path_to_project = "test_open_project_space_dir"
        self.api.create_project_space(project_id, path_to_project)
        self.api.close_project_space(project_id)

        response = self.api.open_project_space(project_id, path_to_project)
        self.assertIsInstance(response, ProjectInfo)

        self.api.close_project_space(project_id)
        shutil.rmtree(path_to_project)


if __name__ == '__main__':
    unittest.main()