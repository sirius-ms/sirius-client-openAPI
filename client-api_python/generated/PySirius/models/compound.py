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

from pydantic import BaseModel, ConfigDict, Field, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from PySirius.models.aligned_feature import AlignedFeature
from PySirius.models.consensus_annotations_csi import ConsensusAnnotationsCSI
from PySirius.models.consensus_annotations_de_novo import ConsensusAnnotationsDeNovo
from typing import Optional, Set
from typing_extensions import Self

class Compound(BaseModel):
    """
    Compound
    """ # noqa: E501
    compound_id: Optional[StrictStr] = Field(default=None, description="uid of this compound Entity", alias="compoundId")
    name: Optional[StrictStr] = Field(default=None, description="Some (optional) human-readable name")
    rt_start_seconds: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="The merged/consensus retention time start (earliest rt) of this compound", alias="rtStartSeconds")
    rt_end_seconds: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="The merged/consensus retention time end (latest rt) of this compound", alias="rtEndSeconds")
    neutral_mass: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Neutral mass of this compound. Ion masse minus the mass of the assigned adduct of each feature of  this compound should result in the same neutral mass", alias="neutralMass")
    features: Optional[List[AlignedFeature]] = Field(default=None, description="List of aligned features (adducts) that belong to the same (this) compound")
    consensus_annotations: Optional[ConsensusAnnotationsCSI] = Field(default=None, alias="consensusAnnotations")
    consensus_annotations_de_novo: Optional[ConsensusAnnotationsDeNovo] = Field(default=None, alias="consensusAnnotationsDeNovo")
    custom_annotations: Optional[ConsensusAnnotationsCSI] = Field(default=None, alias="customAnnotations")
    __properties: ClassVar[List[str]] = ["compoundId", "name", "rtStartSeconds", "rtEndSeconds", "neutralMass", "features", "consensusAnnotations", "consensusAnnotationsDeNovo", "customAnnotations"]

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
        """Create an instance of Compound from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in features (list)
        _items = []
        if self.features:
            for _item in self.features:
                if _item:
                    _items.append(_item.to_dict())
            _dict['features'] = _items
        # override the default output from pydantic by calling `to_dict()` of consensus_annotations
        if self.consensus_annotations:
            _dict['consensusAnnotations'] = self.consensus_annotations.to_dict()
        # override the default output from pydantic by calling `to_dict()` of consensus_annotations_de_novo
        if self.consensus_annotations_de_novo:
            _dict['consensusAnnotationsDeNovo'] = self.consensus_annotations_de_novo.to_dict()
        # override the default output from pydantic by calling `to_dict()` of custom_annotations
        if self.custom_annotations:
            _dict['customAnnotations'] = self.custom_annotations.to_dict()
        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if rt_start_seconds (nullable) is None
        # and model_fields_set contains the field
        if self.rt_start_seconds is None and "rt_start_seconds" in self.model_fields_set:
            _dict['rtStartSeconds'] = None

        # set to None if rt_end_seconds (nullable) is None
        # and model_fields_set contains the field
        if self.rt_end_seconds is None and "rt_end_seconds" in self.model_fields_set:
            _dict['rtEndSeconds'] = None

        # set to None if neutral_mass (nullable) is None
        # and model_fields_set contains the field
        if self.neutral_mass is None and "neutral_mass" in self.model_fields_set:
            _dict['neutralMass'] = None

        # set to None if consensus_annotations (nullable) is None
        # and model_fields_set contains the field
        if self.consensus_annotations is None and "consensus_annotations" in self.model_fields_set:
            _dict['consensusAnnotations'] = None

        # set to None if consensus_annotations_de_novo (nullable) is None
        # and model_fields_set contains the field
        if self.consensus_annotations_de_novo is None and "consensus_annotations_de_novo" in self.model_fields_set:
            _dict['consensusAnnotationsDeNovo'] = None

        # set to None if custom_annotations (nullable) is None
        # and model_fields_set contains the field
        if self.custom_annotations is None and "custom_annotations" in self.model_fields_set:
            _dict['customAnnotations'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of Compound from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "compoundId": obj.get("compoundId"),
            "name": obj.get("name"),
            "rtStartSeconds": obj.get("rtStartSeconds"),
            "rtEndSeconds": obj.get("rtEndSeconds"),
            "neutralMass": obj.get("neutralMass"),
            "features": [AlignedFeature.from_dict(_item) for _item in obj["features"]] if obj.get("features") is not None else None,
            "consensusAnnotations": ConsensusAnnotationsCSI.from_dict(obj["consensusAnnotations"]) if obj.get("consensusAnnotations") is not None else None,
            "consensusAnnotationsDeNovo": ConsensusAnnotationsDeNovo.from_dict(obj["consensusAnnotationsDeNovo"]) if obj.get("consensusAnnotationsDeNovo") is not None else None,
            "customAnnotations": ConsensusAnnotationsCSI.from_dict(obj["customAnnotations"]) if obj.get("customAnnotations") is not None else None
        })
        return _obj


