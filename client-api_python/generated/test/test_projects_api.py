# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.api.projects_api import ProjectsApi


class TestProjectsApi(unittest.TestCase):
    """ProjectsApi unit test stubs"""

    def setUp(self) -> None:
        self.api = ProjectsApi()

    def tearDown(self) -> None:
        pass

    def test_close_project_space(self) -> None:
        """Test case for close_project_space

        Close project-space and remove it from application
        """
        pass

    def test_create_project_space(self) -> None:
        """Test case for create_project_space

        Create and open a new project-space at given location and make it accessible via the given projectId.
        """
        pass

    def test_get_canopus_classy_fire_data(self) -> None:
        """Test case for get_canopus_classy_fire_data

        Get CANOPUS prediction vector definition for ClassyFire classes
        """
        pass

    def test_get_canopus_npc_data(self) -> None:
        """Test case for get_canopus_npc_data

        Get CANOPUS prediction vector definition for NPC classes
        """
        pass

    def test_get_finger_id_data(self) -> None:
        """Test case for get_finger_id_data

        Get CSI:FingerID fingerprint (prediction vector) definition
        """
        pass

    def test_get_project_space(self) -> None:
        """Test case for get_project_space

        Get project space info by its projectId.
        """
        pass

    def test_get_project_spaces(self) -> None:
        """Test case for get_project_spaces

        List opened project spaces.
        """
        pass

    def test_import_ms_run_data(self) -> None:
        """Test case for import_ms_run_data

        Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
        """
        pass

    def test_import_ms_run_data_as_job(self) -> None:
        """Test case for import_ms_run_data_as_job

        Import and Align full MS-Runs from various formats into the specified project as background job.
        """
        pass

    def test_import_preprocessed_data(self) -> None:
        """Test case for import_preprocessed_data

        Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
        """
        pass

    def test_import_preprocessed_data_as_job(self) -> None:
        """Test case for import_preprocessed_data_as_job

        Import ms/ms data from the given format into the specified project-space as background job.
        """
        pass

    def test_open_project_space(self) -> None:
        """Test case for open_project_space

        Open an existing project-space and make it accessible via the given projectId.
        """
        pass


if __name__ == '__main__':
    unittest.main()
