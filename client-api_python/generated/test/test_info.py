# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.info import Info

class TestInfo(unittest.TestCase):
    """Info unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Info:
        """Test Info
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Info`
        """
        model = Info()
        if include_optional:
            return Info(
                night_sky_api_version = '',
                sirius_version = '',
                latest_sirius_version = '',
                latest_sirius_link = '',
                update_available = True,
                sirius_lib_version = '',
                finger_id_lib_version = '',
                chem_db_version = '',
                finger_id_model_version = '',
                fingerprint_id = '',
                available_ilp_solvers = [
                    'GUROBI'
                    ],
                supported_ilp_solvers = {
                    'key' : ''
                    }
            )
        else:
            return Info(
                available_ilp_solvers = [
                    'GUROBI'
                    ],
                supported_ilp_solvers = {
                    'key' : ''
                    },
        )
        """

    def testInfo(self):
        """Test Info"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
