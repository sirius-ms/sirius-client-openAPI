# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.job_progress import JobProgress

class TestJobProgress(unittest.TestCase):
    """JobProgress unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> JobProgress:
        """Test JobProgress
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `JobProgress`
        """
        model = JobProgress()
        if include_optional:
            return JobProgress(
                indeterminate = True,
                state = 'WAITING',
                current_progress = 56,
                max_progress = 56,
                message = '',
                error_message = ''
            )
        else:
            return JobProgress(
        )
        """

    def testJobProgress(self):
        """Test JobProgress"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
