# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 3.0
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

class LipidAnnotation(BaseModel):
    """
    LipidAnnotation
    """ # noqa: E501
    lipid_species: Optional[StrictStr] = Field(default=None, description="Predicted lipid species in LIPID MAPS notation.  NULL if not classified as lipid.", alias="lipidSpecies")
    lipid_maps_id: Optional[StrictStr] = Field(default=None, description="LIPID MAPS id of the predicted lipid class.", alias="lipidMapsId")
    lipid_class_name: Optional[StrictStr] = Field(default=None, description="Human-readable name of the predicted lipid class.", alias="lipidClassName")
    hypothetical_structure: Optional[StrictStr] = Field(default=None, description="Hypothetical molecular structure of the predicted lipid species as SMILES.  NULL if hypothetical structure not available.", alias="hypotheticalStructure")
    chains_unknown: Optional[StrictBool] = Field(default=None, description="True of the formula composition of the chains could not be determined from the MS/MS.", alias="chainsUnknown")
    __properties: ClassVar[List[str]] = ["lipidSpecies", "lipidMapsId", "lipidClassName", "hypotheticalStructure", "chainsUnknown"]

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
        """Create an instance of LipidAnnotation from a JSON string"""
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
        # set to None if lipid_species (nullable) is None
        # and model_fields_set contains the field
        if self.lipid_species is None and "lipid_species" in self.model_fields_set:
            _dict['lipidSpecies'] = None

        # set to None if lipid_maps_id (nullable) is None
        # and model_fields_set contains the field
        if self.lipid_maps_id is None and "lipid_maps_id" in self.model_fields_set:
            _dict['lipidMapsId'] = None

        # set to None if lipid_class_name (nullable) is None
        # and model_fields_set contains the field
        if self.lipid_class_name is None and "lipid_class_name" in self.model_fields_set:
            _dict['lipidClassName'] = None

        # set to None if hypothetical_structure (nullable) is None
        # and model_fields_set contains the field
        if self.hypothetical_structure is None and "hypothetical_structure" in self.model_fields_set:
            _dict['hypotheticalStructure'] = None

        # set to None if chains_unknown (nullable) is None
        # and model_fields_set contains the field
        if self.chains_unknown is None and "chains_unknown" in self.model_fields_set:
            _dict['chainsUnknown'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of LipidAnnotation from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "lipidSpecies": obj.get("lipidSpecies"),
            "lipidMapsId": obj.get("lipidMapsId"),
            "lipidClassName": obj.get("lipidClassName"),
            "hypotheticalStructure": obj.get("hypotheticalStructure"),
            "chainsUnknown": obj.get("chainsUnknown")
        })
        return _obj


