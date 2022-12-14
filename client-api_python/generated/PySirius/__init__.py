# coding: utf-8

# flake8: noqa

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    The version of the OpenAPI document: v0.9 on SIRIUS 5.6.3-SNAPSHOT
    Generated by: https://openapi-generator.tech
"""

__version__ = "1.0.0"

# import ApiClient
from PySirius.api_client import ApiClient

# import Configuration
from PySirius.configuration import Configuration

# import exceptions
from PySirius.exceptions import OpenApiException
from PySirius.exceptions import ApiAttributeError
from PySirius.exceptions import ApiTypeError
from PySirius.exceptions import ApiValueError
from PySirius.exceptions import ApiKeyError
from PySirius.exceptions import ApiException
from PySirius.sirius_api import PySiriusAPI
from PySirius.Sirius import SiriusSDK
