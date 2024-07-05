# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import os
import json
import time
import unittest

import PySirius
from PySirius import PySiriusAPI
from PySirius.models.job import Job
from PySirius.models.page_job import PageJob
from PySirius.models.job_submission import JobSubmission


class TestJobsApi(unittest.TestCase):
    """JobsApi unit test stubs"""

    def setUp(self) -> None:
        self.api = PySiriusAPI(PySirius.ApiClient())
        self.project_id = "test_jobs_api"
        self.path_to_project = f"{os.environ.get('HOME')}/test_jobs_api_dir"
        self.api.get_ProjectsApi().create_project_space(self.project_id, self.path_to_project)

        path_to_demo_data = f"{os.environ.get('HOME')}/sirius-client-openAPI/.updater/clientTests/Data"
        preproc_ms2_file_1 = path_to_demo_data + "/Kaempferol.ms"
        preproc_ms2_file_2 = path_to_demo_data + "/laudanosine.mgf"
        input_files = [preproc_ms2_file_1, preproc_ms2_file_2]
        self.api.get_ProjectsApi().import_preprocessed_data_as_job(self.project_id, input_files=input_files)

    def tearDown(self) -> None:
        self.api.get_ProjectsApi().close_project_space(self.project_id)
        os.remove(self.path_to_project)

    def test_delete_job(self) -> None:
        """Test case for delete_job

        Delete job.
        """
        response_before = self.api.get_JobsApi().get_jobs(self.project_id)
        self.api.get_JobsApi().delete_job(self.project_id, response_before[0].id)
        for i in range(0,10):
            if len(self.api.get_JobsApi().get_jobs(self.project_id)) > 0:
                time.sleep(0.1)
            else: break
        response_after = self.api.get_JobsApi().get_jobs(self.project_id)

        self.assertIsInstance(response_before, list)
        self.assertEqual(len(response_before), 1)
        self.assertIsInstance(response_before[0], Job)
        self.assertIsInstance(response_after, list)
        self.assertEqual(len(response_after), 0)

    def test_delete_job_config(self) -> None:
        """Test case for delete_job_config

        Delete job configuration with given name.
        """
        config_name = "test_delete_job_config"
        default_config = self.api.get_JobsApi().get_default_job_config()
        self.api.get_JobsApi().save_job_config(config_name, default_config)

        response_before = self.api.get_JobsApi().get_job_configs()
        self.api.get_JobsApi().delete_job_config(config_name)
        response_after = self.api.get_JobsApi().get_job_configs()

        self.assertIsInstance(response_before, list)
        self.assertIsInstance(response_after, list)
        self.assertEqual(len(response_before) - 1, len(response_after))

    def test_delete_jobs(self) -> None:
        """Test case for delete_jobs

        * Delete ALL jobs.
        """
        response_before = self.api.get_JobsApi().get_jobs(self.project_id)
        self.api.get_JobsApi().delete_jobs_with_http_info(self.project_id)
        response_after = self.api.get_JobsApi().get_jobs(self.project_id)

        self.assertIsInstance(response_before, list)
        self.assertEqual(len(response_before), 1)
        self.assertIsInstance(response_before[0], Job)
        self.assertIsInstance(response_after, list)
        self.assertEqual(len(response_after), 0)

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
        job = self.api.get_JobsApi().get_jobs(self.project_id)[0]
        response = self.api.get_JobsApi().get_job(self.project_id, job.id)
        self.assertIsInstance(response, Job)

    def test_get_job_config(self) -> None:
        """Test case for get_job_config

        Request job configuration with given name.
        """
        config_name = "test_get_job_config"
        default_config = self.api.get_JobsApi().get_default_job_config()
        self.api.get_JobsApi().save_job_config(config_name, default_config)

        response = self.api.get_JobsApi().get_job_config(config_name)
        self.api.get_JobsApi().delete_job_config(config_name)

        self.assertIsInstance(response, JobSubmission)

    def test_get_job_configs(self) -> None:
        """Test case for get_job_configs

        Request all available job configurations
        """
        config_name = "test_get_job_configs"
        default_config = self.api.get_JobsApi().get_default_job_config()
        self.api.get_JobsApi().save_job_config(config_name, default_config)

        response = self.api.get_JobsApi().get_job_configs()
        self.api.get_JobsApi().delete_job_config(config_name)

        self.assertIsInstance(response, list)
        self.assertIsInstance(response[0], JobSubmission)

    def test_get_jobs(self) -> None:
        """Test case for get_jobs

        Get job information and its current state and progress (if available).
        """
        response = self.api.get_JobsApi().get_jobs(self.project_id)
        self.assertIsInstance(response, list)
        self.assertIsInstance(response[0], Job)

    def test_get_jobs_paged(self) -> None:
        """Test case for get_jobs_paged

        Get Page of jobs with information such as current state and progress (if available).
        """
        response = self.api.get_JobsApi().get_jobs_paged(self.project_id)
        self.assertIsInstance(response, PageJob)

    def test_has_jobs(self) -> None:
        """Test case for has_jobs

        """
        response = self.api.get_JobsApi().has_jobs(self.project_id)
        self.assertIsInstance(response, bool)
        self.assertTrue(response)

    def test_save_job_config(self) -> None:
        """Test case for save_job_config

        Add new job configuration with given name.
        """
        config_name = "test_save_job_config"
        default_config = self.api.get_JobsApi().get_default_job_config()

        response = self.api.get_JobsApi().save_job_config(config_name, default_config)
        self.api.get_JobsApi().delete_job_config(config_name)

        self.assertEqual(response, "test_save_job_config")

    def test_start_command(self) -> None:
        """Test case for start_command

        Start computation for given command and input.
        """
        pass

    def test_start_job(self) -> None:
        """Test case for start_job

        Start computation for given compounds and with given parameters.
        """
        time.sleep(1)
        aligned_feature_id = self.api.get_FeaturesApi().get_aligned_features(self.project_id)[0].aligned_feature_id
        sirius_json = {
            "enabled": True,
            "profile": "QTOF"
        }
        job_submission_json = {
            "alignedFeatureIds": [
                aligned_feature_id
            ],
            "formulaIdParams":
                sirius_json
        }
        job_submission = JobSubmission.from_json(json.dumps(job_submission_json))
        response = self.api.get_JobsApi().start_job(self.project_id, job_submission)
        # time.sleep(3)

        self.assertIsInstance(response, Job)
        # # TODO find substitute for this line for SIRIUS6
        # self.assertTrue(os.path.exists(self.path_to_project + "/" + aligned_feature_id + "/scores"))

    def test_start_job_from_config(self) -> None:
        """Test case for start_job_from_config

        Start computation for given compounds and with parameters from a stored job-config.
        """
        time.sleep(1)
        aligned_feature_id = self.api.get_FeaturesApi().get_aligned_features(self.project_id)[0].aligned_feature_id
        config_name = "test_start_job_from_config"
        sirius_json = {
            "enabled": True,
            "profile": "QTOF"
        }
        job_submission_json = {
            "alignedFeatureIds": [
                aligned_feature_id
            ],
            "formulaIdParams":
                sirius_json
        }
        job_submission = JobSubmission.from_json(json.dumps(job_submission_json))
        self.api.get_JobsApi().save_job_config(config_name, job_submission)
        response = self.api.get_JobsApi().start_job_from_config(self.project_id, config_name, [aligned_feature_id])
        # time.sleep(3)
        self.api.get_JobsApi().delete_job_config(config_name)

        self.assertIsInstance(response, Job)
        # # TODO find substitute for this line for SIRIUS6
        # self.assertTrue(os.path.exists(self.path_to_project + "/" + aligned_feature_id + "/scores"))


if __name__ == '__main__':
    unittest.main()
