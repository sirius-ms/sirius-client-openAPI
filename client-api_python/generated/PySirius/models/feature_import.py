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
from PySirius.models.basic_spectrum import BasicSpectrum
from typing import Optional, Set
from typing_extensions import Self

class FeatureImport(BaseModel):
    """
    FeatureImport
    """ # noqa: E501
    name: Optional[StrictStr] = None
    feature_id: Optional[StrictStr] = Field(default=None, alias="featureId")
    ion_mass: Union[StrictFloat, StrictInt] = Field(alias="ionMass")
    adduct: StrictStr = Field(description="Adduct of this feature. If not know specify [M+?]+ or [M+?]- to define the charge")
    rt_start_seconds: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, alias="rtStartSeconds")
    rt_end_seconds: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, alias="rtEndSeconds")
    merged_ms1: Optional[BasicSpectrum] = Field(default=None, alias="mergedMs1")
    ms1_spectra: List[BasicSpectrum] = Field(alias="ms1Spectra")
    ms2_spectra: List[BasicSpectrum] = Field(alias="ms2Spectra")
    __properties: ClassVar[List[str]] = ["name", "featureId", "ionMass", "adduct", "rtStartSeconds", "rtEndSeconds", "mergedMs1", "ms1Spectra", "ms2Spectra"]

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
        """Create an instance of FeatureImport from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of merged_ms1
        if self.merged_ms1:
            _dict['mergedMs1'] = self.merged_ms1.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in ms1_spectra (list)
        _items = []
        if self.ms1_spectra:
            for _item in self.ms1_spectra:
                if _item:
                    _items.append(_item.to_dict())
            _dict['ms1Spectra'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in ms2_spectra (list)
        _items = []
        if self.ms2_spectra:
            for _item in self.ms2_spectra:
                if _item:
                    _items.append(_item.to_dict())
            _dict['ms2Spectra'] = _items
        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if feature_id (nullable) is None
        # and model_fields_set contains the field
        if self.feature_id is None and "feature_id" in self.model_fields_set:
            _dict['featureId'] = None

        # set to None if rt_start_seconds (nullable) is None
        # and model_fields_set contains the field
        if self.rt_start_seconds is None and "rt_start_seconds" in self.model_fields_set:
            _dict['rtStartSeconds'] = None

        # set to None if rt_end_seconds (nullable) is None
        # and model_fields_set contains the field
        if self.rt_end_seconds is None and "rt_end_seconds" in self.model_fields_set:
            _dict['rtEndSeconds'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of FeatureImport from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "name": obj.get("name"),
            "featureId": obj.get("featureId"),
            "ionMass": obj.get("ionMass"),
            "adduct": obj.get("adduct"),
            "rtStartSeconds": obj.get("rtStartSeconds"),
            "rtEndSeconds": obj.get("rtEndSeconds"),
            "mergedMs1": BasicSpectrum.from_dict(obj["mergedMs1"]) if obj.get("mergedMs1") is not None else None,
            "ms1Spectra": [BasicSpectrum.from_dict(_item) for _item in obj["ms1Spectra"]] if obj.get("ms1Spectra") is not None else None,
            "ms2Spectra": [BasicSpectrum.from_dict(_item) for _item in obj["ms2Spectra"]] if obj.get("ms2Spectra") is not None else None
        })
        return _obj


