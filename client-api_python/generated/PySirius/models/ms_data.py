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

from pydantic import BaseModel, ConfigDict, Field
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.basic_spectrum import BasicSpectrum
from typing import Optional, Set
from typing_extensions import Self

class MsData(BaseModel):
    """
    The MsData wraps all spectral input data belonging to a (aligned) feature. All spectra fields are optional.  However, at least one Spectrum field needs to be set to create a valid MsData Object.  The different types of spectra fields can be extended to adapt to other MassSpec measurement techniques not covered yet.  <p>  Each Feature can have:  - One merged MS/MS spectrum (optional)  - One merged MS spectrum (optional)  - many MS/MS spectra (optional)  - many MS spectra (optional)  <p>  Each non-merged spectrum has an index which can be used to access the spectrum.  <p>  In the future we might add some additional information like chromatographic peak or something similar
    """ # noqa: E501
    merged_ms1: Optional[BasicSpectrum] = Field(default=None, alias="mergedMs1")
    merged_ms2: Optional[BasicSpectrum] = Field(default=None, alias="mergedMs2")
    ms1_spectra: Optional[List[Optional[BasicSpectrum]]] = Field(default=None, alias="ms1Spectra")
    ms2_spectra: Optional[List[Optional[BasicSpectrum]]] = Field(default=None, alias="ms2Spectra")
    __properties: ClassVar[List[str]] = ["mergedMs1", "mergedMs2", "ms1Spectra", "ms2Spectra"]

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
        """Create an instance of MsData from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of merged_ms2
        if self.merged_ms2:
            _dict['mergedMs2'] = self.merged_ms2.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in ms1_spectra (list)
        _items = []
        if self.ms1_spectra:
            for _item_ms1_spectra in self.ms1_spectra:
                if _item_ms1_spectra:
                    _items.append(_item_ms1_spectra.to_dict())
            _dict['ms1Spectra'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in ms2_spectra (list)
        _items = []
        if self.ms2_spectra:
            for _item_ms2_spectra in self.ms2_spectra:
                if _item_ms2_spectra:
                    _items.append(_item_ms2_spectra.to_dict())
            _dict['ms2Spectra'] = _items
        # set to None if merged_ms1 (nullable) is None
        # and model_fields_set contains the field
        if self.merged_ms1 is None and "merged_ms1" in self.model_fields_set:
            _dict['mergedMs1'] = None

        # set to None if merged_ms2 (nullable) is None
        # and model_fields_set contains the field
        if self.merged_ms2 is None and "merged_ms2" in self.model_fields_set:
            _dict['mergedMs2'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of MsData from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "mergedMs1": BasicSpectrum.from_dict(obj["mergedMs1"]) if obj.get("mergedMs1") is not None else None,
            "mergedMs2": BasicSpectrum.from_dict(obj["mergedMs2"]) if obj.get("mergedMs2") is not None else None,
            "ms1Spectra": [BasicSpectrum.from_dict(_item) for _item in obj["ms1Spectra"]] if obj.get("ms1Spectra") is not None else None,
            "ms2Spectra": [BasicSpectrum.from_dict(_item) for _item in obj["ms2Spectra"]] if obj.get("ms2Spectra") is not None else None
        })
        return _obj


