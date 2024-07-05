# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import json
from enum import Enum
from typing_extensions import Self


class FormulaCandidateOptField(str, Enum):
    """
    FormulaCandidateOptField
    """

    """
    allowed enum values
    """
    NONE = 'none'
    STATISTICS = 'statistics'
    FRAGMENTATIONTREE = 'fragmentationTree'
    ANNOTATEDSPECTRUM = 'annotatedSpectrum'
    ISOTOPEPATTERN = 'isotopePattern'
    LIPIDANNOTATION = 'lipidAnnotation'
    PREDICTEDFINGERPRINT = 'predictedFingerprint'
    COMPOUNDCLASSES = 'compoundClasses'
    CANOPUSPREDICTIONS = 'canopusPredictions'

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create an instance of FormulaCandidateOptField from a JSON string"""
        return cls(json.loads(json_str))


