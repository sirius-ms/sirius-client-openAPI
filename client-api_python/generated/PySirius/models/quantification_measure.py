# coding: utf-8

"""
    SIRIUS Nightsky API


    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import json
from enum import Enum
from typing_extensions import Self


class QuantificationMeasure(str, Enum):
    """
    QuantificationMeasure
    """

    """
    allowed enum values
    """
    APEX_HEIGHT = 'APEX_HEIGHT'

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create an instance of QuantificationMeasure from a JSON string"""
        return cls(json.loads(json_str))


