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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.spectral_matching_type import SpectralMatchingType
from typing import Optional, Set
from typing_extensions import Self

class SpectralLibrarySearch(BaseModel):
    """
    User/developer friendly parameter subset for the Spectral library search tool.
    """ # noqa: E501
    enabled: Optional[StrictBool] = Field(default=None, description="tags whether the tool is enabled")
    spectra_search_dbs: Optional[List[Optional[StrictStr]]] = Field(default=None, description="Structure Databases with Reference spectra to search in.  <p>  Defaults to BIO + Custom Databases. Possible values are available to Database API.", alias="spectraSearchDBs")
    peak_deviation_ppm: Optional[float] = Field(default=None, description="Maximum allowed mass deviation in ppm for matching peaks.", alias="peakDeviationPpm")
    precursor_deviation_ppm: Optional[float] = Field(default=None, description="Maximum allowed mass deviation in ppm for matching the precursor. If not specified, the same value as for the peaks is used.", alias="precursorDeviationPpm")
    scoring: Optional[SpectralMatchingType] = None
    __properties: ClassVar[List[str]] = ["enabled", "spectraSearchDBs", "peakDeviationPpm", "precursorDeviationPpm", "scoring"]

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
        """Create an instance of SpectralLibrarySearch from a JSON string"""
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
        # set to None if spectra_search_dbs (nullable) is None
        # and model_fields_set contains the field
        if self.spectra_search_dbs is None and "spectra_search_dbs" in self.model_fields_set:
            _dict['spectraSearchDBs'] = None

        # set to None if peak_deviation_ppm (nullable) is None
        # and model_fields_set contains the field
        if self.peak_deviation_ppm is None and "peak_deviation_ppm" in self.model_fields_set:
            _dict['peakDeviationPpm'] = None

        # set to None if precursor_deviation_ppm (nullable) is None
        # and model_fields_set contains the field
        if self.precursor_deviation_ppm is None and "precursor_deviation_ppm" in self.model_fields_set:
            _dict['precursorDeviationPpm'] = None

        # set to None if scoring (nullable) is None
        # and model_fields_set contains the field
        if self.scoring is None and "scoring" in self.model_fields_set:
            _dict['scoring'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SpectralLibrarySearch from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "enabled": obj.get("enabled"),
            "spectraSearchDBs": obj.get("spectraSearchDBs"),
            "peakDeviationPpm": obj.get("peakDeviationPpm"),
            "precursorDeviationPpm": obj.get("precursorDeviationPpm"),
            "scoring": obj.get("scoring")
        })
        return _obj


