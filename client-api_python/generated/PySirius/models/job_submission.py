# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, Field, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.canopus import Canopus
from PySirius.models.fingerprint_prediction import FingerprintPrediction
from PySirius.models.ms_novelist import MsNovelist
from PySirius.models.sirius import Sirius
from PySirius.models.spectral_library_search import SpectralLibrarySearch
from PySirius.models.structure_db_search import StructureDbSearch
from PySirius.models.zodiac import Zodiac
from typing import Optional, Set
from typing_extensions import Self

class JobSubmission(BaseModel):
    """
    Object to submit a job to be executed by SIRIUS
    """ # noqa: E501
    compound_ids: Optional[List[Optional[StrictStr]]] = Field(default=None, description="Compounds that should be the input for this Job  Will be converted to the respective alignedFeatureIds for computation.   At least one compoundId or alignedFeatureId needs to be specified.", alias="compoundIds")
    aligned_feature_ids: Optional[List[Optional[StrictStr]]] = Field(default=None, description="Features (aligned over runs) that should be the input for this Job   At least one compoundId or alignedFeatureId needs to be specified.", alias="alignedFeatureIds")
    fallback_adducts: Optional[List[Optional[StrictStr]]] = Field(default=None, description="Describes how to deal with Adducts: Fallback adducts are considered if the auto detection did not find any indication for an ion mode.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-", alias="fallbackAdducts")
    enforced_adducts: Optional[List[Optional[StrictStr]]] = Field(default=None, description="Describes how to deal with Adducts:  Enforced adducts that are always considered.  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-", alias="enforcedAdducts")
    detectable_adducts: Optional[List[Optional[StrictStr]]] = Field(default=None, description="Describes how to deal with Adducts: Detectable adducts which are only considered if there is an indication in the MS1 scan (e.g. correct mass delta).  Pos Examples: [M+H]+,[M]+,[M+K]+,[M+Na]+,[M+H-H2O]+,[M+Na2-H]+,[M+2K-H]+,[M+NH4]+,[M+H3O]+,[M+MeOH+H]+,[M+ACN+H]+,[M+2ACN+H]+,[M+IPA+H]+,[M+ACN+Na]+,[M+DMSO+H]+  Neg Examples: [M-H]-,[M]-,[M+K-2H]-,[M+Cl]-,[M-H2O-H]-,[M+Na-2H]-,M+FA-H]-,[M+Br]-,[M+HAc-H]-,[M+TFA-H]-,[M+ACN-H]-", alias="detectableAdducts")
    recompute: Optional[StrictBool] = Field(default=None, description="Indicate if already existing result for a tool to be executed should be overwritten or not.")
    spectra_search_params: Optional[SpectralLibrarySearch] = Field(default=None, alias="spectraSearchParams")
    formula_id_params: Optional[Sirius] = Field(default=None, alias="formulaIdParams")
    zodiac_params: Optional[Zodiac] = Field(default=None, alias="zodiacParams")
    fingerprint_prediction_params: Optional[FingerprintPrediction] = Field(default=None, alias="fingerprintPredictionParams")
    canopus_params: Optional[Canopus] = Field(default=None, alias="canopusParams")
    structure_db_search_params: Optional[StructureDbSearch] = Field(default=None, alias="structureDbSearchParams")
    ms_novelist_params: Optional[MsNovelist] = Field(default=None, alias="msNovelistParams")
    config_map: Optional[Dict[str, StrictStr]] = Field(default=None, description="As an alternative to the object based parameters, this map allows to store key value pairs  of ALL SIRIUS parameters. All possible parameters can be retrieved from SIRIUS via the respective endpoint.", alias="configMap")
    __properties: ClassVar[List[str]] = ["compoundIds", "alignedFeatureIds", "fallbackAdducts", "enforcedAdducts", "detectableAdducts", "recompute", "spectraSearchParams", "formulaIdParams", "zodiacParams", "fingerprintPredictionParams", "canopusParams", "structureDbSearchParams", "msNovelistParams", "configMap"]

    model_config = {
        "populate_by_name": True,
        "validate_assignment": True,
        "protected_namespaces": (),
    }


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of JobSubmission from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of spectra_search_params
        if self.spectra_search_params:
            _dict['spectraSearchParams'] = self.spectra_search_params.to_dict()
        # override the default output from pydantic by calling `to_dict()` of formula_id_params
        if self.formula_id_params:
            _dict['formulaIdParams'] = self.formula_id_params.to_dict()
        # override the default output from pydantic by calling `to_dict()` of zodiac_params
        if self.zodiac_params:
            _dict['zodiacParams'] = self.zodiac_params.to_dict()
        # override the default output from pydantic by calling `to_dict()` of fingerprint_prediction_params
        if self.fingerprint_prediction_params:
            _dict['fingerprintPredictionParams'] = self.fingerprint_prediction_params.to_dict()
        # override the default output from pydantic by calling `to_dict()` of canopus_params
        if self.canopus_params:
            _dict['canopusParams'] = self.canopus_params.to_dict()
        # override the default output from pydantic by calling `to_dict()` of structure_db_search_params
        if self.structure_db_search_params:
            _dict['structureDbSearchParams'] = self.structure_db_search_params.to_dict()
        # override the default output from pydantic by calling `to_dict()` of ms_novelist_params
        if self.ms_novelist_params:
            _dict['msNovelistParams'] = self.ms_novelist_params.to_dict()
        # set to None if compound_ids (nullable) is None
        # and model_fields_set contains the field
        if self.compound_ids is None and "compound_ids" in self.model_fields_set:
            _dict['compoundIds'] = None

        # set to None if aligned_feature_ids (nullable) is None
        # and model_fields_set contains the field
        if self.aligned_feature_ids is None and "aligned_feature_ids" in self.model_fields_set:
            _dict['alignedFeatureIds'] = None

        # set to None if fallback_adducts (nullable) is None
        # and model_fields_set contains the field
        if self.fallback_adducts is None and "fallback_adducts" in self.model_fields_set:
            _dict['fallbackAdducts'] = None

        # set to None if enforced_adducts (nullable) is None
        # and model_fields_set contains the field
        if self.enforced_adducts is None and "enforced_adducts" in self.model_fields_set:
            _dict['enforcedAdducts'] = None

        # set to None if detectable_adducts (nullable) is None
        # and model_fields_set contains the field
        if self.detectable_adducts is None and "detectable_adducts" in self.model_fields_set:
            _dict['detectableAdducts'] = None

        # set to None if recompute (nullable) is None
        # and model_fields_set contains the field
        if self.recompute is None and "recompute" in self.model_fields_set:
            _dict['recompute'] = None

        # set to None if spectra_search_params (nullable) is None
        # and model_fields_set contains the field
        if self.spectra_search_params is None and "spectra_search_params" in self.model_fields_set:
            _dict['spectraSearchParams'] = None

        # set to None if formula_id_params (nullable) is None
        # and model_fields_set contains the field
        if self.formula_id_params is None and "formula_id_params" in self.model_fields_set:
            _dict['formulaIdParams'] = None

        # set to None if zodiac_params (nullable) is None
        # and model_fields_set contains the field
        if self.zodiac_params is None and "zodiac_params" in self.model_fields_set:
            _dict['zodiacParams'] = None

        # set to None if fingerprint_prediction_params (nullable) is None
        # and model_fields_set contains the field
        if self.fingerprint_prediction_params is None and "fingerprint_prediction_params" in self.model_fields_set:
            _dict['fingerprintPredictionParams'] = None

        # set to None if canopus_params (nullable) is None
        # and model_fields_set contains the field
        if self.canopus_params is None and "canopus_params" in self.model_fields_set:
            _dict['canopusParams'] = None

        # set to None if structure_db_search_params (nullable) is None
        # and model_fields_set contains the field
        if self.structure_db_search_params is None and "structure_db_search_params" in self.model_fields_set:
            _dict['structureDbSearchParams'] = None

        # set to None if ms_novelist_params (nullable) is None
        # and model_fields_set contains the field
        if self.ms_novelist_params is None and "ms_novelist_params" in self.model_fields_set:
            _dict['msNovelistParams'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of JobSubmission from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "compoundIds": obj.get("compoundIds"),
            "alignedFeatureIds": obj.get("alignedFeatureIds"),
            "fallbackAdducts": obj.get("fallbackAdducts"),
            "enforcedAdducts": obj.get("enforcedAdducts"),
            "detectableAdducts": obj.get("detectableAdducts"),
            "recompute": obj.get("recompute"),
            "spectraSearchParams": SpectralLibrarySearch.from_dict(obj["spectraSearchParams"]) if obj.get("spectraSearchParams") is not None else None,
            "formulaIdParams": Sirius.from_dict(obj["formulaIdParams"]) if obj.get("formulaIdParams") is not None else None,
            "zodiacParams": Zodiac.from_dict(obj["zodiacParams"]) if obj.get("zodiacParams") is not None else None,
            "fingerprintPredictionParams": FingerprintPrediction.from_dict(obj["fingerprintPredictionParams"]) if obj.get("fingerprintPredictionParams") is not None else None,
            "canopusParams": Canopus.from_dict(obj["canopusParams"]) if obj.get("canopusParams") is not None else None,
            "structureDbSearchParams": StructureDbSearch.from_dict(obj["structureDbSearchParams"]) if obj.get("structureDbSearchParams") is not None else None,
            "msNovelistParams": MsNovelist.from_dict(obj["msNovelistParams"]) if obj.get("msNovelistParams") is not None else None,
            "configMap": obj.get("configMap")
        })
        return _obj


