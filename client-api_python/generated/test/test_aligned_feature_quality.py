# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.aligned_feature_quality import AlignedFeatureQuality

class TestAlignedFeatureQuality(unittest.TestCase):
    """AlignedFeatureQuality unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> AlignedFeatureQuality:
        """Test AlignedFeatureQuality
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `AlignedFeatureQuality`
        """
        model = AlignedFeatureQuality()
        if include_optional:
            return AlignedFeatureQuality(
                aligned_feature_id = '',
                overall_quality = 'NOT_APPLICABLE',
                categories = {
                    'key' : PySirius.models.category.Category(
                        category_name = '', 
                        overall_quality = 'NOT_APPLICABLE', 
                        items = [
                            PySirius.models.item.Item(
                                description = '', 
                                quality = 'NOT_APPLICABLE', 
                                weight = 'MINOR', )
                            ], )
                    }
            )
        else:
            return AlignedFeatureQuality(
                aligned_feature_id = '',
                overall_quality = 'NOT_APPLICABLE',
                categories = {
                    'key' : PySirius.models.category.Category(
                        category_name = '', 
                        overall_quality = 'NOT_APPLICABLE', 
                        items = [
                            PySirius.models.item.Item(
                                description = '', 
                                quality = 'NOT_APPLICABLE', 
                                weight = 'MINOR', )
                            ], )
                    },
        )
        """

    def testAlignedFeatureQuality(self):
        """Test AlignedFeatureQuality"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
