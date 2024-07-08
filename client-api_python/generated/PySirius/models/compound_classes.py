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

from pydantic import BaseModel, ConfigDict, Field
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.compound_class import CompoundClass
from typing import Optional, Set
from typing_extensions import Self

class CompoundClasses(BaseModel):
    """
    Container class that holds the most likely compound class for different levels of each ontology for a  certain Compound/Feature/FormulaCandidate/PredictedFingerprint.
    """ # noqa: E501
    npc_pathway: Optional[CompoundClass] = Field(default=None, alias="npcPathway")
    npc_superclass: Optional[CompoundClass] = Field(default=None, alias="npcSuperclass")
    npc_class: Optional[CompoundClass] = Field(default=None, alias="npcClass")
    classy_fire_lineage: Optional[List[Optional[CompoundClass]]] = Field(default=None, description="Most likely ClassyFire lineage from ordered from least specific to most specific class  classyFireLineage.get(classyFireLineage.size() - 1) gives the most specific ClassyFire compound class annotation", alias="classyFireLineage")
    classy_fire_alternatives: Optional[List[Optional[CompoundClass]]] = Field(default=None, description="Alternative ClassyFire classes with high probability that do not fit into the linage", alias="classyFireAlternatives")
    __properties: ClassVar[List[str]] = ["npcPathway", "npcSuperclass", "npcClass", "classyFireLineage", "classyFireAlternatives"]

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
        """Create an instance of CompoundClasses from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of npc_pathway
        if self.npc_pathway:
            _dict['npcPathway'] = self.npc_pathway.to_dict()
        # override the default output from pydantic by calling `to_dict()` of npc_superclass
        if self.npc_superclass:
            _dict['npcSuperclass'] = self.npc_superclass.to_dict()
        # override the default output from pydantic by calling `to_dict()` of npc_class
        if self.npc_class:
            _dict['npcClass'] = self.npc_class.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in classy_fire_lineage (list)
        _items = []
        if self.classy_fire_lineage:
            for _item in self.classy_fire_lineage:
                if _item:
                    _items.append(_item.to_dict())
            _dict['classyFireLineage'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in classy_fire_alternatives (list)
        _items = []
        if self.classy_fire_alternatives:
            for _item in self.classy_fire_alternatives:
                if _item:
                    _items.append(_item.to_dict())
            _dict['classyFireAlternatives'] = _items
        # set to None if npc_pathway (nullable) is None
        # and model_fields_set contains the field
        if self.npc_pathway is None and "npc_pathway" in self.model_fields_set:
            _dict['npcPathway'] = None

        # set to None if npc_superclass (nullable) is None
        # and model_fields_set contains the field
        if self.npc_superclass is None and "npc_superclass" in self.model_fields_set:
            _dict['npcSuperclass'] = None

        # set to None if npc_class (nullable) is None
        # and model_fields_set contains the field
        if self.npc_class is None and "npc_class" in self.model_fields_set:
            _dict['npcClass'] = None

        # set to None if classy_fire_lineage (nullable) is None
        # and model_fields_set contains the field
        if self.classy_fire_lineage is None and "classy_fire_lineage" in self.model_fields_set:
            _dict['classyFireLineage'] = None

        # set to None if classy_fire_alternatives (nullable) is None
        # and model_fields_set contains the field
        if self.classy_fire_alternatives is None and "classy_fire_alternatives" in self.model_fields_set:
            _dict['classyFireAlternatives'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of CompoundClasses from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "npcPathway": CompoundClass.from_dict(obj["npcPathway"]) if obj.get("npcPathway") is not None else None,
            "npcSuperclass": CompoundClass.from_dict(obj["npcSuperclass"]) if obj.get("npcSuperclass") is not None else None,
            "npcClass": CompoundClass.from_dict(obj["npcClass"]) if obj.get("npcClass") is not None else None,
            "classyFireLineage": [CompoundClass.from_dict(_item) for _item in obj["classyFireLineage"]] if obj.get("classyFireLineage") is not None else None,
            "classyFireAlternatives": [CompoundClass.from_dict(_item) for _item in obj["classyFireAlternatives"]] if obj.get("classyFireAlternatives") is not None else None
        })
        return _obj


