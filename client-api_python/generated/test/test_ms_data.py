# coding: utf-8

"""
    SIRIUS Nightsky API

    OpenAPI REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.The provided OpenAPI specification allows to autogenerate clients for different programming languages.  # noqa: E501

    OpenAPI spec version: 0.9
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

from __future__ import absolute_import

import unittest

import PySirius
from models.ms_data import MsData  # noqa: E501
from PySirius.rest import ApiException


class TestMsData(unittest.TestCase):
    """MsData unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testMsData(self):
        """Test MsData"""
        # FIXME: construct object with mandatory attributes with example values
        # model = PySirius.models.ms_data.MsData()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
