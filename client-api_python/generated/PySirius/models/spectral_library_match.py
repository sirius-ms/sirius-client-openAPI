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

class SpectralLibraryMatch(BaseModel):
    """
    SpectralLibraryMatch
    """ # noqa: E501
    spec_match_id: Optional[StrictStr] = Field(default=None, alias="specMatchId")
    rank: Optional[StrictInt] = None
    similarity: Union[StrictFloat, StrictInt]
    shared_peaks: Optional[StrictInt] = Field(default=None, alias="sharedPeaks")
    query_spectrum_index: StrictInt = Field(alias="querySpectrumIndex")
    db_name: Optional[StrictStr] = Field(default=None, alias="dbName")
    db_id: Optional[StrictStr] = Field(default=None, alias="dbId")
    uuid: StrictInt
    splash: Optional[StrictStr] = None
    molecular_formula: Optional[StrictStr] = Field(default=None, alias="molecularFormula")
    adduct: Optional[StrictStr] = None
    exact_mass: Optional[StrictStr] = Field(default=None, alias="exactMass")
    smiles: Optional[StrictStr] = None
    candidate_in_chi_key: StrictStr = Field(alias="candidateInChiKey")
    reference_spectrum: Optional[BasicSpectrum] = Field(default=None, alias="referenceSpectrum")
    __properties: ClassVar[List[str]] = ["specMatchId", "rank", "similarity", "sharedPeaks", "querySpectrumIndex", "dbName", "dbId", "uuid", "splash", "molecularFormula", "adduct", "exactMass", "smiles", "candidateInChiKey", "referenceSpectrum"]

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
        """Create an instance of SpectralLibraryMatch from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of reference_spectrum
        if self.reference_spectrum:
            _dict['referenceSpectrum'] = self.reference_spectrum.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SpectralLibraryMatch from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "specMatchId": obj.get("specMatchId"),
            "rank": obj.get("rank"),
            "similarity": obj.get("similarity"),
            "sharedPeaks": obj.get("sharedPeaks"),
            "querySpectrumIndex": obj.get("querySpectrumIndex"),
            "dbName": obj.get("dbName"),
            "dbId": obj.get("dbId"),
            "uuid": obj.get("uuid"),
            "splash": obj.get("splash"),
            "molecularFormula": obj.get("molecularFormula"),
            "adduct": obj.get("adduct"),
            "exactMass": obj.get("exactMass"),
            "smiles": obj.get("smiles"),
            "candidateInChiKey": obj.get("candidateInChiKey"),
            "referenceSpectrum": BasicSpectrum.from_dict(obj["referenceSpectrum"]) if obj.get("referenceSpectrum") is not None else None
        })
        return _obj


