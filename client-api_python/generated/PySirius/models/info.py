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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictStr, field_validator
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class Info(BaseModel):
    """
    Info
    """ # noqa: E501
    night_sky_api_version: Optional[StrictStr] = Field(default=None, description="API version of the SIRIUS Nightsky API", alias="nightSkyApiVersion")
    sirius_version: Optional[StrictStr] = Field(default=None, description="Version of the SIRIUS application", alias="siriusVersion")
    latest_sirius_version: Optional[StrictStr] = Field(default=None, description="Latest available Version of the SIRIUS application", alias="latestSiriusVersion")
    latest_sirius_link: Optional[StrictStr] = Field(default=None, description="Link to the latest available Version of the SIRIUS application", alias="latestSiriusLink")
    update_available: Optional[StrictBool] = Field(default=None, description="true if newer SIRIUS version is available", alias="updateAvailable")
    sirius_lib_version: Optional[StrictStr] = Field(default=None, description="Version of the SIRIUS libraries", alias="siriusLibVersion")
    finger_id_lib_version: Optional[StrictStr] = Field(default=None, description="Version of the CSI:FingerID libraries", alias="fingerIdLibVersion")
    chem_db_version: Optional[StrictStr] = Field(default=None, description="Version of the Chemical Database available via SIRIUS web services", alias="chemDbVersion")
    finger_id_model_version: Optional[StrictStr] = Field(default=None, description="Version of the Machine learning models used for Fingerprint, Compound Class and Structure Prediction  Not available if web service is not reachable.", alias="fingerIdModelVersion")
    fingerprint_id: Optional[StrictStr] = Field(default=None, description="Version of the Molecular Fingerprint used by SIRIUS", alias="fingerprintId")
    available_ilp_solvers: List[StrictStr] = Field(description="Set of solvers that are configured correctly and can be loaded", alias="availableILPSolvers")
    supported_ilp_solvers: Dict[str, StrictStr] = Field(description="Set of ILP Solvers that are Supported and their version information", alias="supportedILPSolvers")
    __properties: ClassVar[List[str]] = ["nightSkyApiVersion", "siriusVersion", "latestSiriusVersion", "latestSiriusLink", "updateAvailable", "siriusLibVersion", "fingerIdLibVersion", "chemDbVersion", "fingerIdModelVersion", "fingerprintId", "availableILPSolvers", "supportedILPSolvers"]

    @field_validator('available_ilp_solvers')
    def available_ilp_solvers_validate_enum(cls, value):
        """Validates the enum"""
        for i in value:
            if i not in set(['GUROBI', 'CPLEX', 'GLPK', 'CLP']):
                raise ValueError("each list item must be one of ('GUROBI', 'CPLEX', 'GLPK', 'CLP')")
        return value

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
        """Create an instance of Info from a JSON string"""
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
        # set to None if night_sky_api_version (nullable) is None
        # and model_fields_set contains the field
        if self.night_sky_api_version is None and "night_sky_api_version" in self.model_fields_set:
            _dict['nightSkyApiVersion'] = None

        # set to None if sirius_version (nullable) is None
        # and model_fields_set contains the field
        if self.sirius_version is None and "sirius_version" in self.model_fields_set:
            _dict['siriusVersion'] = None

        # set to None if latest_sirius_version (nullable) is None
        # and model_fields_set contains the field
        if self.latest_sirius_version is None and "latest_sirius_version" in self.model_fields_set:
            _dict['latestSiriusVersion'] = None

        # set to None if latest_sirius_link (nullable) is None
        # and model_fields_set contains the field
        if self.latest_sirius_link is None and "latest_sirius_link" in self.model_fields_set:
            _dict['latestSiriusLink'] = None

        # set to None if sirius_lib_version (nullable) is None
        # and model_fields_set contains the field
        if self.sirius_lib_version is None and "sirius_lib_version" in self.model_fields_set:
            _dict['siriusLibVersion'] = None

        # set to None if finger_id_lib_version (nullable) is None
        # and model_fields_set contains the field
        if self.finger_id_lib_version is None and "finger_id_lib_version" in self.model_fields_set:
            _dict['fingerIdLibVersion'] = None

        # set to None if chem_db_version (nullable) is None
        # and model_fields_set contains the field
        if self.chem_db_version is None and "chem_db_version" in self.model_fields_set:
            _dict['chemDbVersion'] = None

        # set to None if finger_id_model_version (nullable) is None
        # and model_fields_set contains the field
        if self.finger_id_model_version is None and "finger_id_model_version" in self.model_fields_set:
            _dict['fingerIdModelVersion'] = None

        # set to None if fingerprint_id (nullable) is None
        # and model_fields_set contains the field
        if self.fingerprint_id is None and "fingerprint_id" in self.model_fields_set:
            _dict['fingerprintId'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of Info from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "nightSkyApiVersion": obj.get("nightSkyApiVersion"),
            "siriusVersion": obj.get("siriusVersion"),
            "latestSiriusVersion": obj.get("latestSiriusVersion"),
            "latestSiriusLink": obj.get("latestSiriusLink"),
            "updateAvailable": obj.get("updateAvailable"),
            "siriusLibVersion": obj.get("siriusLibVersion"),
            "fingerIdLibVersion": obj.get("fingerIdLibVersion"),
            "chemDbVersion": obj.get("chemDbVersion"),
            "fingerIdModelVersion": obj.get("fingerIdModelVersion"),
            "fingerprintId": obj.get("fingerprintId"),
            "availableILPSolvers": obj.get("availableILPSolvers"),
            "supportedILPSolvers": obj.get("supportedILPSolvers")
        })
        return _obj


