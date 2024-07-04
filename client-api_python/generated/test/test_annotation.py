# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.annotation import Annotation

class TestAnnotation(unittest.TestCase):
    """Annotation unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> Annotation:
        """Test Annotation
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `Annotation`
        """
        model = Annotation()
        if include_optional:
            return Annotation(
                type = 'FEATURE',
                description = '',
                index = 56,
                var_from = 56,
                to = 56
            )
        else:
            return Annotation(
        )
        """

    def testAnnotation(self):
        """Test Annotation"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
