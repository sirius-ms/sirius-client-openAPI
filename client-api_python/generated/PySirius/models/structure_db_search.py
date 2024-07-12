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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.confidence_mode import ConfidenceMode
from typing import Optional, Set
from typing_extensions import Self

class StructureDbSearch(BaseModel):
    """
    User/developer friendly parameter subset for the CSI:FingerID structure db search tool.  Needs results from FingerprintPrediction and Canopus Tool.  Non-Null parameters in this Object well override their equivalent value in the config map.
    """ # noqa: E501
    enabled: Optional[StrictBool] = Field(default=None, description="tags whether the tool is enabled")
    structure_search_dbs: Optional[List[Optional[StrictStr]]] = Field(default=None, description="Structure databases to search in, If expansive search is enabled this DB selection will be expanded to PubChem  if not high confidence hit was found in the selected databases.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API.", alias="structureSearchDBs")
    tag_structures_with_lipid_class: Optional[StrictBool] = Field(default=None, description="Candidates matching the lipid class estimated by El Gordo will be tagged.  The lipid class will only be available if El Gordo predicts that the MS/MS is a lipid spectrum.  If this parameter is set to 'false' El Gordo will still be executed and e.g. improve the fragmentation  tree, but the matching structure candidates will not be tagged if they match lipid class.", alias="tagStructuresWithLipidClass")
    expansive_search_confidence_mode: Optional[ConfidenceMode] = Field(default=None, alias="expansiveSearchConfidenceMode")
    __properties: ClassVar[List[str]] = ["enabled", "structureSearchDBs", "tagStructuresWithLipidClass", "expansiveSearchConfidenceMode"]

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
        """Create an instance of StructureDbSearch from a JSON string"""
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
        # set to None if structure_search_dbs (nullable) is None
        # and model_fields_set contains the field
        if self.structure_search_dbs is None and "structure_search_dbs" in self.model_fields_set:
            _dict['structureSearchDBs'] = None

        # set to None if tag_structures_with_lipid_class (nullable) is None
        # and model_fields_set contains the field
        if self.tag_structures_with_lipid_class is None and "tag_structures_with_lipid_class" in self.model_fields_set:
            _dict['tagStructuresWithLipidClass'] = None

        # set to None if expansive_search_confidence_mode (nullable) is None
        # and model_fields_set contains the field
        if self.expansive_search_confidence_mode is None and "expansive_search_confidence_mode" in self.model_fields_set:
            _dict['expansiveSearchConfidenceMode'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of StructureDbSearch from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "enabled": obj.get("enabled"),
            "structureSearchDBs": obj.get("structureSearchDBs"),
            "tagStructuresWithLipidClass": obj.get("tagStructuresWithLipidClass"),
            "expansiveSearchConfidenceMode": obj.get("expansiveSearchConfidenceMode")
        })
        return _obj


