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


class ProjectEventType(str, Enum):
    """
    ProjectEventType
    """

    """
    allowed enum values
    """
    PROJECT_OPENED = 'PROJECT_OPENED'
    PROJECT_MOVED = 'PROJECT_MOVED'
    PROJECT_CLOSED = 'PROJECT_CLOSED'
    FEATURE_CREATED = 'FEATURE_CREATED'
    FEATURE_UPDATED = 'FEATURE_UPDATED'
    FEATURE_DELETED = 'FEATURE_DELETED'
    RESULT_CREATED = 'RESULT_CREATED'
    RESULT_UPDATED = 'RESULT_UPDATED'
    RESULT_DELETED = 'RESULT_DELETED'

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create an instance of ProjectEventType from a JSON string"""
        return cls(json.loads(json_str))


