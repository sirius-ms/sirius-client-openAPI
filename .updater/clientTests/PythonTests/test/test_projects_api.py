# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import os
import unittest

from PySirius import SiriusSDK
from PySirius.api.projects_api import ProjectsApi
from PySirius.models.job import Job
from PySirius.models.project_info import ProjectInfo
from PySirius.models.import_result import ImportResult
from PySirius.models.lcms_submission_parameters import LcmsSubmissionParameters


class TestProjectsApi(unittest.TestCase):
    """ProjectsApi unit test stubs"""

    def setUp(self) -> None:
        self.projects = SiriusSDK().attach_or_start_sirius().projects()
        path_to_demo_data = f"{os.environ.get('HOME')}/sirius-client-openAPI/.updater/clientTests/Data"
        self.preproc_ms2_file_1 = path_to_demo_data + "/Kaempferol.ms"
        self.preproc_ms2_file_2 = path_to_demo_data + "/laudanosine.mgf"
        self.full_ms_file = path_to_demo_data + "/SPF4_Eso3_GH6_01_22643.mzXML"

        # equals test_create_project_space
        self.project_id = "test_projects_api"
        self.path_to_project = f"{os.environ.get('HOME')}/test_projects_api.sirius"
        self.create_response = self.projects.create_project_space(self.project_id, self.path_to_project)

    def tearDown(self) -> None:
        # equals test_close_project_space
        self.projects.close_project_space(self.project_id)
        os.remove(self.path_to_project)

    def test_close_project_space(self) -> None:
        """Test case for close_project_space

        Close project-space and remove it from application
        """
        pass

    def test_create_project_space(self) -> None:
        """Test case for create_project_space

        Create and open a new project-space at given location and make it accessible via the given projectId.
        """
        self.assertIsInstance(self.create_response, ProjectInfo)

    def test_get_canopus_classy_fire_data(self) -> None:
        """Test case for get_canopus_classy_fire_data

        Get CANOPUS prediction vector definition for ClassyFire classes
        """
        response = self.projects.get_canopus_classy_fire_data(self.project_id, 0)
        self.assertIsInstance(response, str)

    def test_get_canopus_npc_data(self) -> None:
        """Test case for get_canopus_npc_data

        Get CANOPUS prediction vector definition for NPC classes
        """
        response = self.projects.get_canopus_npc_data(self.project_id, 0)
        self.assertIsInstance(response, str)

    def test_get_finger_id_data(self) -> None:
        """Test case for get_finger_id_data

        Get CSI:FingerID fingerprint (prediction vector) definition
        """
        response = self.projects.get_finger_id_data(self.project_id, 0)
        self.assertIsInstance(response, str)

    def test_get_project_space(self) -> None:
        """Test case for get_project_space

        Get project space info by its projectId.
        """
        response = self.projects.get_project_space(self.project_id)
        self.assertIsInstance(response, ProjectInfo)

    def test_get_project_spaces(self) -> None:
        """Test case for get_project_spaces

        List opened project spaces.
        """
        response = self.projects.get_project_spaces()
        self.assertIsInstance(response, list)
        self.assertIsInstance(response[0], ProjectInfo)

    def test_import_ms_run_data(self) -> None:
        """Test case for import_ms_run_data

        Import and Align full MS-Runs from various formats into the specified project  Possible formats (mzML, mzXML)
        """
        input_files = [self.full_ms_file]
        parameters = LcmsSubmissionParameters()
        response = self.projects.import_ms_run_data(self.project_id, parameters, input_files=input_files)
        self.assertIsInstance(response, ImportResult)

    def test_import_ms_run_data_as_job(self) -> None:
        """Test case for import_ms_run_data_as_job

        Import and Align full MS-Runs from various formats into the specified project as background job.
        """
        input_files = [self.full_ms_file]
        parameters = LcmsSubmissionParameters()
        response = self.projects.import_ms_run_data_as_job(self.project_id, parameters, input_files=input_files)
        self.assertIsInstance(response, Job)

    def test_import_preprocessed_data(self) -> None:
        """Test case for import_preprocessed_data

        Import already preprocessed ms/ms data from various formats into the specified project  Possible formats (ms, mgf, cef, msp)
        """
        input_files = [self.preproc_ms2_file_1, self.preproc_ms2_file_2]
        response = self.projects.import_preprocessed_data(self.project_id, input_files=input_files)
        self.assertIsInstance(response, ImportResult)

    def test_import_preprocessed_data_as_job(self) -> None:
        """Test case for import_preprocessed_data_as_job

        Import ms/ms data from the given format into the specified project-space as background job.
        """
        input_files = [self.preproc_ms2_file_1, self.preproc_ms2_file_2]
        response = self.projects.import_preprocessed_data_as_job(self.project_id, input_files=input_files)
        self.assertIsInstance(response, Job)

    def test_open_project_space(self) -> None:
        """Test case for open_project_space

        Open an existing project-space and make it accessible via the given projectId.
        """
        response = self.projects.open_project_space("tomato", f"{os.environ.get('HOME')}/tomato_small.sirius")
        self.projects.close_project_space("tomato")
        self.assertIsInstance(response, ProjectInfo)

if __name__ == '__main__':
    unittest.main()
