# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    OpenAPI spec version: v0.9 on SIRIUS 5.6.4-SNAPSHOT
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

from __future__ import absolute_import

import unittest

import PySirius
from PySirius.models.account_credentials import AccountCredentials  # noqa: E501
from PySirius.rest import ApiException


class TestAccountCredentials(unittest.TestCase):
    """AccountCredentials unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testAccountCredentials(self):
        """Test AccountCredentials"""
        # FIXME: construct object with mandatory attributes with example values
        # model = PySirius.models.account_credentials.AccountCredentials()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
