# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, Field, StrictBool, StrictInt, StrictStr, field_validator
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class ConnectionError(BaseModel):
    """
    
    """ # noqa: E501
    error_type: StrictStr = Field(alias="errorType")
    error_klass: StrictStr = Field(alias="errorKlass")
    sirius_error_code: StrictInt = Field(alias="siriusErrorCode")
    sirius_message: StrictStr = Field(alias="siriusMessage")
    server_response_error_code: Optional[StrictInt] = Field(default=None, alias="serverResponseErrorCode")
    server_response_error_message: Optional[StrictStr] = Field(default=None, alias="serverResponseErrorMessage")
    error: Optional[StrictBool] = None
    warning: Optional[StrictBool] = None
    __properties: ClassVar[List[str]] = ["errorType", "errorKlass", "siriusErrorCode", "siriusMessage", "serverResponseErrorCode", "serverResponseErrorMessage", "error", "warning"]

    @field_validator('error_type')
    def error_type_validate_enum(cls, value):
        """Validates the enum"""
        if value not in set(['WARNING', 'ERROR']):
            raise ValueError("must be one of enum values ('WARNING', 'ERROR')")
        return value

    @field_validator('error_klass')
    def error_klass_validate_enum(cls, value):
        """Validates the enum"""
        if value not in set(['UNKNOWN', 'INTERNET', 'LOGIN_SERVER', 'LICENSE_SERVER', 'TOKEN', 'LOGIN', 'LICENSE', 'TERMS', 'APP_SERVER', 'WORKER']):
            raise ValueError("must be one of enum values ('UNKNOWN', 'INTERNET', 'LOGIN_SERVER', 'LICENSE_SERVER', 'TOKEN', 'LOGIN', 'LICENSE', 'TERMS', 'APP_SERVER', 'WORKER')")
        return value

    model_config = {
        "populate_by_name": True,
        "validate_assignment": True,
        "protected_namespaces": (),
    }


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of ConnectionError from a JSON string"""
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
        # set to None if server_response_error_code (nullable) is None
        # and model_fields_set contains the field
        if self.server_response_error_code is None and "server_response_error_code" in self.model_fields_set:
            _dict['serverResponseErrorCode'] = None

        # set to None if server_response_error_message (nullable) is None
        # and model_fields_set contains the field
        if self.server_response_error_message is None and "server_response_error_message" in self.model_fields_set:
            _dict['serverResponseErrorMessage'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of ConnectionError from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "errorType": obj.get("errorType"),
            "errorKlass": obj.get("errorKlass"),
            "siriusErrorCode": obj.get("siriusErrorCode"),
            "siriusMessage": obj.get("siriusMessage"),
            "serverResponseErrorCode": obj.get("serverResponseErrorCode"),
            "serverResponseErrorMessage": obj.get("serverResponseErrorMessage"),
            "error": obj.get("error"),
            "warning": obj.get("warning")
        })
        return _obj


