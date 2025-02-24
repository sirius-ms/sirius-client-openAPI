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

from pydantic import BaseModel, ConfigDict, Field, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.simple_peak import SimplePeak
from typing import Optional, Set
from typing_extensions import Self

class BasicSpectrum(BaseModel):
    """
    BasicSpectrum
    """ # noqa: E501
    name: Optional[StrictStr] = Field(default=None, description="Optional Displayable name of this spectrum.")
    ms_level: Optional[StrictInt] = Field(default=None, description="MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use null or zero", alias="msLevel")
    collision_energy: Optional[StrictStr] = Field(default=None, description="Collision energy used for MS/MS spectra  Null for spectra where collision energy is not applicable", alias="collisionEnergy")
    instrument: Optional[StrictStr] = Field(default=None, description="Instrument information.")
    precursor_mz: Optional[float] = Field(default=None, description="Precursor m/z of the MS/MS spectrum  Null for spectra where precursor m/z is not applicable", alias="precursorMz")
    scan_number: Optional[StrictInt] = Field(default=None, description="Scan number of the spectrum.  Might be null for artificial spectra with no scan number (e.g. Simulated Isotope patterns or merged spectra)", alias="scanNumber")
    peaks: List[SimplePeak] = Field(description="The peaks of this spectrum which might contain additional annotations such as molecular formulas.")
    abs_intensity_factor: Optional[float] = Field(default=None, description="Factor to convert relative intensities to absolute intensities.  Might be null or 1 for spectra where absolute intensities are not available (E.g. artificial or merged spectra)", alias="absIntensityFactor")
    __properties: ClassVar[List[str]] = ["name", "msLevel", "collisionEnergy", "instrument", "precursorMz", "scanNumber", "peaks", "absIntensityFactor"]

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
        """Create an instance of BasicSpectrum from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in peaks (list)
        _items = []
        if self.peaks:
            for _item_peaks in self.peaks:
                if _item_peaks:
                    _items.append(_item_peaks.to_dict())
            _dict['peaks'] = _items
        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if ms_level (nullable) is None
        # and model_fields_set contains the field
        if self.ms_level is None and "ms_level" in self.model_fields_set:
            _dict['msLevel'] = None

        # set to None if collision_energy (nullable) is None
        # and model_fields_set contains the field
        if self.collision_energy is None and "collision_energy" in self.model_fields_set:
            _dict['collisionEnergy'] = None

        # set to None if instrument (nullable) is None
        # and model_fields_set contains the field
        if self.instrument is None and "instrument" in self.model_fields_set:
            _dict['instrument'] = None

        # set to None if precursor_mz (nullable) is None
        # and model_fields_set contains the field
        if self.precursor_mz is None and "precursor_mz" in self.model_fields_set:
            _dict['precursorMz'] = None

        # set to None if scan_number (nullable) is None
        # and model_fields_set contains the field
        if self.scan_number is None and "scan_number" in self.model_fields_set:
            _dict['scanNumber'] = None

        # set to None if abs_intensity_factor (nullable) is None
        # and model_fields_set contains the field
        if self.abs_intensity_factor is None and "abs_intensity_factor" in self.model_fields_set:
            _dict['absIntensityFactor'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of BasicSpectrum from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "name": obj.get("name"),
            "msLevel": obj.get("msLevel"),
            "collisionEnergy": obj.get("collisionEnergy"),
            "instrument": obj.get("instrument"),
            "precursorMz": obj.get("precursorMz"),
            "scanNumber": obj.get("scanNumber"),
            "peaks": [SimplePeak.from_dict(_item) for _item in obj["peaks"]] if obj.get("peaks") is not None else None,
            "absIntensityFactor": obj.get("absIntensityFactor")
        })
        return _obj


