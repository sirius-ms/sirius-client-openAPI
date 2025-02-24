# coding: utf-8

"""
    SIRIUS Nightsky API


    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.project_event_type import ProjectEventType
from typing import Optional, Set
from typing_extensions import Self

class ProjectChangeEvent(BaseModel):
    """
    ProjectChangeEvent
    """ # noqa: E501
    event_type: Optional[ProjectEventType] = Field(default=None, alias="eventType")
    project_id: Optional[StrictStr] = Field(default=None, alias="projectId")
    compound_id: Optional[StrictStr] = Field(default=None, alias="compoundId")
    featured_id: Optional[StrictStr] = Field(default=None, alias="featuredId")
    formula_id: Optional[StrictStr] = Field(default=None, alias="formulaId")
    structure_in_ch_i_key: Optional[StrictStr] = Field(default=None, alias="structureInChIKey")
    __properties: ClassVar[List[str]] = ["eventType", "projectId", "compoundId", "featuredId", "formulaId", "structureInChIKey"]

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
        """Create an instance of ProjectChangeEvent from a JSON string"""
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
        # set to None if compound_id (nullable) is None
        # and model_fields_set contains the field
        if self.compound_id is None and "compound_id" in self.model_fields_set:
            _dict['compoundId'] = None

        # set to None if featured_id (nullable) is None
        # and model_fields_set contains the field
        if self.featured_id is None and "featured_id" in self.model_fields_set:
            _dict['featuredId'] = None

        # set to None if formula_id (nullable) is None
        # and model_fields_set contains the field
        if self.formula_id is None and "formula_id" in self.model_fields_set:
            _dict['formulaId'] = None

        # set to None if structure_in_ch_i_key (nullable) is None
        # and model_fields_set contains the field
        if self.structure_in_ch_i_key is None and "structure_in_ch_i_key" in self.model_fields_set:
            _dict['structureInChIKey'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of ProjectChangeEvent from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "eventType": obj.get("eventType"),
            "projectId": obj.get("projectId"),
            "compoundId": obj.get("compoundId"),
            "featuredId": obj.get("featuredId"),
            "formulaId": obj.get("formulaId"),
            "structureInChIKey": obj.get("structureInChIKey")
        })
        return _obj


