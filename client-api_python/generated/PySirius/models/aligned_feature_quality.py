# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.category import Category
from PySirius.models.data_quality import DataQuality
from typing import Optional, Set
from typing_extensions import Self

class AlignedFeatureQuality(BaseModel):
    """
    AlignedFeatureQuality
    """ # noqa: E501
    aligned_feature_id: StrictStr = Field(description="Id of the feature (aligned over runs) this quality information belongs to.", alias="alignedFeatureId")
    overall_quality: Optional[DataQuality] = Field(alias="overallQuality")
    categories: Dict[str, Category] = Field(description="Contains all pre-computation quality information that belong to  this feature (aligned over runs), such as information about the quality of the peak shape, MS2 spectrum etc.,")
    __properties: ClassVar[List[str]] = ["alignedFeatureId", "overallQuality", "categories"]

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
        """Create an instance of AlignedFeatureQuality from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each value in categories (dict)
        _field_dict = {}
        if self.categories:
            for _key in self.categories:
                if self.categories[_key]:
                    _field_dict[_key] = self.categories[_key].to_dict()
            _dict['categories'] = _field_dict
        # set to None if overall_quality (nullable) is None
        # and model_fields_set contains the field
        if self.overall_quality is None and "overall_quality" in self.model_fields_set:
            _dict['overallQuality'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of AlignedFeatureQuality from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "alignedFeatureId": obj.get("alignedFeatureId"),
            "overallQuality": obj.get("overallQuality"),
            "categories": dict(
                (_k, Category.from_dict(_v))
                for _k, _v in obj["categories"].items()
            )
            if obj.get("categories") is not None
            else None
        })
        return _obj

