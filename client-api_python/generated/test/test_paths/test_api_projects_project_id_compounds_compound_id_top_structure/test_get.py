# coding: utf-8

"""


    Generated by: https://openapi-generator.tech
"""

import unittest
from unittest.mock import patch

import urllib3

import PySirius
from PySirius.paths.api_projects_project_id_compounds_compound_id_top_structure import get  # noqa: E501
from PySirius import configuration, schemas, api_client

from .. import ApiTestMixin


class TestApiProjectsProjectIdCompoundsCompoundIdTopStructure(ApiTestMixin, unittest.TestCase):
    """
    ApiProjectsProjectIdCompoundsCompoundIdTopStructure unit test stubs
        Best Scoring StructureCandidate over all molecular formular resutls that belong to the specified  compound/feature (compoundId).  # noqa: E501
    """
    _configuration = configuration.Configuration()

    def setUp(self):
        used_api_client = api_client.ApiClient(configuration=self._configuration)
        self.api = get.ApiForget(api_client=used_api_client)  # noqa: E501

    def tearDown(self):
        pass

    response_status = 200




if __name__ == '__main__':
    unittest.main()
