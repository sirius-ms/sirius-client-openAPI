# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictInt, StrictStr, field_validator
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class WorkerInfo(BaseModel):
    """
    WorkerInfo
    """ # noqa: E501
    id: StrictInt
    type: StrictStr
    supported_predictors: List[StrictStr] = Field(alias="supportedPredictors")
    version: Optional[StrictStr] = None
    host: Optional[StrictStr] = None
    prefix: Optional[StrictStr] = None
    state: StrictInt
    alive: StrictInt
    server_time: StrictInt = Field(alias="serverTime")
    __properties: ClassVar[List[str]] = ["id", "type", "supportedPredictors", "version", "host", "prefix", "state", "alive", "serverTime"]

    @field_validator('type')
    def type_validate_enum(cls, value):
        """Validates the enum"""
        if value not in set(['FORMULA_ID', 'FINGER_ID', 'IOKR', 'CANOPUS', 'COVTREE']):
            raise ValueError("must be one of enum values ('FORMULA_ID', 'FINGER_ID', 'IOKR', 'CANOPUS', 'COVTREE')")
        return value

    @field_validator('supported_predictors')
    def supported_predictors_validate_enum(cls, value):
        """Validates the enum"""
        for i in value:
            if i not in set(['CSI_FINGERID_POSITIVE', 'CSI_FINGERID_NEGATIVE']):
                raise ValueError("each list item must be one of ('CSI_FINGERID_POSITIVE', 'CSI_FINGERID_NEGATIVE')")
        return value

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of WorkerInfo from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # set to None if version (nullable) is None
        # and model_fields_set contains the field
        if self.version is None and "version" in self.model_fields_set:
            _dict['version'] = None

        # set to None if host (nullable) is None
        # and model_fields_set contains the field
        if self.host is None and "host" in self.model_fields_set:
            _dict['host'] = None

        # set to None if prefix (nullable) is None
        # and model_fields_set contains the field
        if self.prefix is None and "prefix" in self.model_fields_set:
            _dict['prefix'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of WorkerInfo from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "id": obj.get("id"),
            "type": obj.get("type"),
            "supportedPredictors": obj.get("supportedPredictors"),
            "version": obj.get("version"),
            "host": obj.get("host"),
            "prefix": obj.get("prefix"),
            "state": obj.get("state"),
            "alive": obj.get("alive"),
            "serverTime": obj.get("serverTime")
        })
        return _obj


