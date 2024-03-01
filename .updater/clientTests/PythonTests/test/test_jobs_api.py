# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501

import os
import json
import time
import copy
import shutil
import unittest

import PySirius
from PySirius import PySiriusAPI
from PySirius.models.job import Job
from PySirius.models.sirius import Sirius
from PySirius.models.instrument import Instrument
from PySirius.models.job_submission import JobSubmission


class TestJobsApi(unittest.TestCase):
    """JobsApi unit test stubs"""

    def setUp(self) -> None:
        self.api = PySiriusAPI(PySirius.ApiClient())
        self.path_to_demo_data = f"{os.environ.get('HOME')}/sirius-client-openAPI/.updater/clientTests/Data"

        json_for_sirius = {
            "enabled": True,
            "profile": Instrument("QTOF")
        }

        self.job_submission = {
            "alignedFeatureIds": [
                "string"
            ],
            "formulaIdParams":
                Sirius.from_json(json.dumps(json_for_sirius))
        }

        self.import_local_files_submission = PySirius.ImportLocalFilesSubmission.from_dict(
            {
                "allowMs1OnlyData": True,
                "ignoreFormulas": True,
                "inputPaths": [
                    self.path_to_demo_data + "/Kaempferol.ms",
                    self.path_to_demo_data + "/laudanosine.mgf"
                ]
            }
        )

    def tearDown(self) -> None:
        pass


    def test_delete_job(self) -> None:
        """Test case for delete_job

        Delete job.
        """
        pass


    def test_delete_job_config(self) -> None:
        """Test case for delete_job_config

        Delete job configuration with given name.
        """
        pass


    def test_delete_jobs(self) -> None:
        """Test case for delete_jobs

        * Delete ALL jobs.
        """
        pass


    def test_get_default_job_config(self) -> None:
        """Test case for get_default_job_config

        Request default job configuration
        """
        response = self.api.get_JobsApi().get_default_job_config()
        self.assertIsInstance(response, JobSubmission)


    def test_get_job(self) -> None:
        """Test case for get_job

        Get job information and its current state and progress (if available).
        """
        pass


    def test_get_job_config(self) -> None:
        """Test case for get_job_config

        Request job configuration with given name.
        """
        pass


    def test_get_job_configs(self) -> None:
        """Test case for get_job_configs

        Request all available job configurations
        """
        config_name = "test_get_job_configs"
        default_config = self.api.get_JobsApi().get_default_job_config()
        self.api.get_JobsApi().post_job_config(config_name, default_config)

        response = self.api.get_JobsApi().get_job_configs()
        self.api.get_JobsApi().delete_job_config(config_name)

        self.assertIsInstance(response, list)
        self.assertIsInstance(response[0], JobSubmission)


    def test_get_jobs(self) -> None:
        """Test case for get_jobs

        Get job information and its current state and progress (if available).
        """
        pass


    def test_has_jobs(self) -> None:
        """Test case for has_jobs

        """
        ## ENDPOINT MISSING
        # project_id = "test_has_jobs"
        # path_to_project = f"{os.environ.get('HOME')}/test_has_jobs_dir"
        # self.api.get_ProjectsApi().create_project_space(project_id, path_to_project)

        # response = self.api.get_JobsApi().has_jobs(project_id)
        # self.api.get_ProjectsApi().close_project_space(project_id)
        # shutil.rmtree(path_to_project)

        # self.assertIsInstance(response, bool)
        pass


    def test_post_job_config(self) -> None:
        """Test case for post_job_config

        Add new job configuration with given name.
        """
        config_name = "test_post_job_config"
        default_config = self.api.get_JobsApi().get_default_job_config()

        response = self.api.get_JobsApi().post_job_config(config_name, default_config)
        self.api.get_JobsApi().delete_job_config(config_name)

        self.assertEqual(response, "test_post_job_config")


    def test_start_command(self) -> None:
        """Test case for start_command

        Start computation for given command and input.
        """
        ## ENDPOINT MISSING
        # project_id = "test_start_command"
        # path_to_project = f"{os.environ.get('HOME')}/test_start_command_dir"
        # self.api.get_ProjectsApi().create_project_space(project_id, path_to_project)
        # json_for_command = {
        #     "command": [
        #         "--help"
        #     ]
        # }
        # command_submission = CommandSubmission.from_json(json.dumps(json_for_command))

        # response = self.api.get_JobsApi().start_command(project_id, command_submission)
        # self.api.get_ProjectsApi().close_project_space(project_id)
        # shutil.rmtree(path_to_project)

        # self.assertIsInstance(response, Job)
        pass


    def test_start_import_from_path_job(self) -> None:
        """Test case for start_import_from_path_job

        Import ms/ms data in given format from local filesystem into the specified project
        """
        project_id = "test_start_import_from_path_job"
        path_to_project = f"{os.environ.get('HOME')}/test_start_import_from_path_job_dir"
        self.api.get_ProjectsApi().create_project_space(project_id, path_to_project)

        self.api.get_JobsApi().start_import_from_path_job(project_id, self.import_local_files_submission)
        time.sleep(1)
        response = self.api.get_FeaturesApi().get_aligned_features(project_id)

        self.api.get_ProjectsApi().close_project_space(project_id)
        shutil.rmtree(path_to_project)

        self.assertEqual(len(response), 2)


    def test_start_import_from_string_job(self) -> None:
        """Test case for start_import_from_string_job

        Import ms/ms data from the given format into the specified project-space  Possible formats (ms, mgf, cef, msp, mzML, mzXML)
        """
        pass


    def test_start_job(self) -> None:
        """Test case for start_job

        Start computation for given compounds and with given parameters.
        """
        project_id = "test_start_job"
        path_to_project = f"{os.environ.get('HOME')}/test_start_job_dir"
        self.api.get_ProjectsApi().create_project_space(project_id, path_to_project)

        self.api.get_JobsApi().start_import_from_path_job(project_id, self.import_local_files_submission)
        time.sleep(1)
        id = self.api.get_FeaturesApi().get_aligned_features(project_id)[0].aligned_feature_id
        job_submission = copy.deepcopy(self.job_submission)
        job_submission["alignedFeatureIds"] = [id]
        job = self.api.get_JobsApi().start_job(project_id, job_submission)
        time.sleep(3)

        self.api.get_ProjectsApi().close_project_space(project_id)

        self.assertIsInstance(job, Job)
        # self.assertTrue(os.path.exists(path_to_project+id+"/scores"))
        shutil.rmtree(path_to_project)


    def test_start_job_from_config(self) -> None:
        """Test case for start_job_from_config

        Start computation for given compounds and with parameters from a stored job-config.
        """
        pass


if __name__ == '__main__':
    unittest.main()
