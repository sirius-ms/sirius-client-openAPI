# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class SearchableDatabaseParameters(BaseModel):
    """
    SearchableDatabaseParameters
    """ # noqa: E501
    display_name: Optional[StrictStr] = Field(default=None, description="display name of the database  Should be short", alias="displayName")
    location: Optional[StrictStr] = Field(default=None, description="Storage location of user database  Might be NULL for non-user databases or if default location is used.")
    match_rt_of_reference_spectra: Optional[StrictBool] = Field(default=False, description="Indicates whether this database shall be used to use retention time information for library matching.  Typically used for in-house spectral libraries that have been measured on", alias="matchRtOfReferenceSpectra")
    __properties: ClassVar[List[str]] = ["displayName", "location", "matchRtOfReferenceSpectra"]

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
        """Create an instance of SearchableDatabaseParameters from a JSON string"""
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
        # set to None if display_name (nullable) is None
        # and model_fields_set contains the field
        if self.display_name is None and "display_name" in self.model_fields_set:
            _dict['displayName'] = None

        # set to None if location (nullable) is None
        # and model_fields_set contains the field
        if self.location is None and "location" in self.model_fields_set:
            _dict['location'] = None

        # set to None if match_rt_of_reference_spectra (nullable) is None
        # and model_fields_set contains the field
        if self.match_rt_of_reference_spectra is None and "match_rt_of_reference_spectra" in self.model_fields_set:
            _dict['matchRtOfReferenceSpectra'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchableDatabaseParameters from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "displayName": obj.get("displayName"),
            "location": obj.get("location"),
            "matchRtOfReferenceSpectra": obj.get("matchRtOfReferenceSpectra") if obj.get("matchRtOfReferenceSpectra") is not None else False
        })
        return _obj


