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

from pydantic import BaseModel, ConfigDict, Field, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.compound_class_type import CompoundClassType
from typing import Optional, Set
from typing_extensions import Self

class CompoundClass(BaseModel):
    """
    Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a feature most likely belongs to
    """ # noqa: E501
    type: Optional[CompoundClassType] = None
    level: Optional[StrictStr] = Field(default=None, description="Name of the level this compound class belongs to")
    name: Optional[StrictStr] = Field(default=None, description="Name of the compound class.")
    description: Optional[StrictStr] = Field(default=None, description="Description of the compound class.")
    id: Optional[StrictInt] = Field(default=None, description="Unique id of the class. Might be undefined for certain classification ontologies.")
    probability: Optional[float] = Field(default=None, description="prediction probability")
    index: Optional[StrictInt] = Field(default=None, description="Absolute index of this property in the predicted vector/embedding")
    __properties: ClassVar[List[str]] = ["type", "level", "name", "description", "id", "probability", "index"]

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
        """Create an instance of CompoundClass from a JSON string"""
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
        # set to None if type (nullable) is None
        # and model_fields_set contains the field
        if self.type is None and "type" in self.model_fields_set:
            _dict['type'] = None

        # set to None if level (nullable) is None
        # and model_fields_set contains the field
        if self.level is None and "level" in self.model_fields_set:
            _dict['level'] = None

        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if description (nullable) is None
        # and model_fields_set contains the field
        if self.description is None and "description" in self.model_fields_set:
            _dict['description'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of CompoundClass from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "type": obj.get("type"),
            "level": obj.get("level"),
            "name": obj.get("name"),
            "description": obj.get("description"),
            "id": obj.get("id"),
            "probability": obj.get("probability"),
            "index": obj.get("index")
        })
        return _obj


