# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.background_computations_state_event import BackgroundComputationsStateEvent

class TestBackgroundComputationsStateEvent(unittest.TestCase):
    """BackgroundComputationsStateEvent unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> BackgroundComputationsStateEvent:
        """Test BackgroundComputationsStateEvent
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `BackgroundComputationsStateEvent`
        """
        model = BackgroundComputationsStateEvent()
        if include_optional:
            return BackgroundComputationsStateEvent(
                affected_jobs = [
                    PySirius.models.job.Job(
                        id = '', 
                        command = '', 
                        progress = PySirius.models.job_progress.JobProgress(
                            indeterminate = True, 
                            state = 'WAITING', 
                            current_progress = 56, 
                            max_progress = 56, 
                            message = '', 
                            error_message = '', ), 
                        affected_compound_ids = [
                            ''
                            ], 
                        affected_aligned_feature_ids = [
                            ''
                            ], )
                    ],
                number_of_jobs = 56,
                number_of_running_jobs = 56,
                number_of_finished_jobs = 56
            )
        else:
            return BackgroundComputationsStateEvent(
                affected_jobs = [
                    PySirius.models.job.Job(
                        id = '', 
                        command = '', 
                        progress = PySirius.models.job_progress.JobProgress(
                            indeterminate = True, 
                            state = 'WAITING', 
                            current_progress = 56, 
                            max_progress = 56, 
                            message = '', 
                            error_message = '', ), 
                        affected_compound_ids = [
                            ''
                            ], 
                        affected_aligned_feature_ids = [
                            ''
                            ], )
                    ],
                number_of_jobs = 56,
                number_of_running_jobs = 56,
                number_of_finished_jobs = 56,
        )
        """

    def testBackgroundComputationsStateEvent(self):
        """Test BackgroundComputationsStateEvent"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
