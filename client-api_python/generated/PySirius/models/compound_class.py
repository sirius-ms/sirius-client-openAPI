# coding: utf-8

"""
    SIRIUS Nightsky API

    OpenAPI REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.The provided OpenAPI specification allows to autogenerate clients for different programming languages.

    The version of the OpenAPI document: 0.9
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, Field, StrictFloat, StrictInt, StrictStr, field_validator
from typing import Any, ClassVar, Dict, List, Optional, Union
from typing import Optional, Set
from typing_extensions import Self

class CompoundClass(BaseModel):
    """
    Predicted compound class with name, probability and id if available.  (ClassyFire and NPC). This can be seen as the set of classes a compound most likely belongs to
    """ # noqa: E501
    type: Optional[StrictStr] = Field(default=None, description="Specifies the classification ontology the CompoundClass belongs to.")
    name: Optional[StrictStr] = Field(default=None, description="Name of the compound class.")
    description: Optional[StrictStr] = Field(default=None, description="Description of the compound class.")
    id: Optional[StrictInt] = Field(default=None, description="Unique id of the class. Might be undefined for certain classification ontologies.")
    probability: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="prediction probability")
    __properties: ClassVar[List[str]] = ["type", "name", "description", "id", "probability"]

    @field_validator('type')
    def type_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        if value not in set(['ClassyFire', 'NPC']):
            raise ValueError("must be one of enum values ('ClassyFire', 'NPC')")
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
            "name": obj.get("name"),
            "description": obj.get("description"),
            "id": obj.get("id"),
            "probability": obj.get("probability")
        })
        return _obj


