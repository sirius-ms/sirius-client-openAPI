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

from pydantic import BaseModel, Field, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from PySirius.models.parent_peak import ParentPeak
from typing import Optional, Set
from typing_extensions import Self

class PeakAnnotation(BaseModel):
    """
    PeakAnnotation
    """ # noqa: E501
    fragment_id: StrictInt = Field(description="Identifier of the peak/fragment. Can be used to map fragments and peaks  among fragmentation trees and spectra.", alias="fragmentId")
    molecular_formula: Optional[StrictStr] = Field(default=None, description="Molecular formula that has been annotated to this peak", alias="molecularFormula")
    ionization: Optional[StrictStr] = Field(default=None, description="Ionization that has been annotated to this peak")
    exact_mass: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Exact mass of the annotated molecular formula and ionization", alias="exactMass")
    mass_deviation_mz: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Absolute mass deviation of the exact mass to the measured peak mass in mDa", alias="massDeviationMz")
    mass_deviation_ppm: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Relative mass deviation of the exact mass to the measured peak mass in ppm", alias="massDeviationPpm")
    recalibrated_mass_deviation_mz: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Absolute mass deviation of the exact mass to the recalibrated peak mass in mDa", alias="recalibratedMassDeviationMz")
    recalibrated_mass_deviation_ppm: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Relative mass deviation of the exact mass to the recalibrated peak mass in ppm", alias="recalibratedMassDeviationPpm")
    parent_peak: Optional[ParentPeak] = Field(default=None, alias="parentPeak")
    substructure_atoms: Optional[List[Optional[StrictInt]]] = Field(default=None, description="Array/List of indices of the atoms of the structure candidate that are part of this fragments substructure  (highlighted atoms)", alias="substructureAtoms")
    substructure_bonds: Optional[List[Optional[StrictInt]]] = Field(default=None, description="Array/List of indices of the bonds of the structure candidate that are part of this fragments substructure  (highlighted bonds)   Null if substructure annotation not available or not requested.", alias="substructureBonds")
    substructure_bonds_cut: Optional[List[Optional[StrictInt]]] = Field(default=None, description="Array/List of indices of the bonds of the structure candidate that need to be cut to produce this fragments  substructure (highlighted cutted bonds).   Null if substructure annotation not available or not requested.", alias="substructureBondsCut")
    substructure_score: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="This score roughly reflects the probability of this fragment forming.   This is the score of the path from root to this node which has the maximal score or \"profit\".  The score of a path is equal to the sum of scores of its contained fragments and edges.  Note: Refers to 'totalScore' in CombinatorialNode   Null if substructure annotation not available or not requested.", alias="substructureScore")
    hydrogen_rearrangements: Optional[StrictInt] = Field(default=None, description="Number of hydrogens rearrangements needed to match the substructure to the fragment formula.   Null if substructure annotation not available or not requested.", alias="hydrogenRearrangements")
    __properties: ClassVar[List[str]] = ["fragmentId", "molecularFormula", "ionization", "exactMass", "massDeviationMz", "massDeviationPpm", "recalibratedMassDeviationMz", "recalibratedMassDeviationPpm", "parentPeak", "substructureAtoms", "substructureBonds", "substructureBondsCut", "substructureScore", "hydrogenRearrangements"]

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
        """Create an instance of PeakAnnotation from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of parent_peak
        if self.parent_peak:
            _dict['parentPeak'] = self.parent_peak.to_dict()
        # set to None if molecular_formula (nullable) is None
        # and model_fields_set contains the field
        if self.molecular_formula is None and "molecular_formula" in self.model_fields_set:
            _dict['molecularFormula'] = None

        # set to None if ionization (nullable) is None
        # and model_fields_set contains the field
        if self.ionization is None and "ionization" in self.model_fields_set:
            _dict['ionization'] = None

        # set to None if exact_mass (nullable) is None
        # and model_fields_set contains the field
        if self.exact_mass is None and "exact_mass" in self.model_fields_set:
            _dict['exactMass'] = None

        # set to None if mass_deviation_mz (nullable) is None
        # and model_fields_set contains the field
        if self.mass_deviation_mz is None and "mass_deviation_mz" in self.model_fields_set:
            _dict['massDeviationMz'] = None

        # set to None if mass_deviation_ppm (nullable) is None
        # and model_fields_set contains the field
        if self.mass_deviation_ppm is None and "mass_deviation_ppm" in self.model_fields_set:
            _dict['massDeviationPpm'] = None

        # set to None if recalibrated_mass_deviation_mz (nullable) is None
        # and model_fields_set contains the field
        if self.recalibrated_mass_deviation_mz is None and "recalibrated_mass_deviation_mz" in self.model_fields_set:
            _dict['recalibratedMassDeviationMz'] = None

        # set to None if recalibrated_mass_deviation_ppm (nullable) is None
        # and model_fields_set contains the field
        if self.recalibrated_mass_deviation_ppm is None and "recalibrated_mass_deviation_ppm" in self.model_fields_set:
            _dict['recalibratedMassDeviationPpm'] = None

        # set to None if parent_peak (nullable) is None
        # and model_fields_set contains the field
        if self.parent_peak is None and "parent_peak" in self.model_fields_set:
            _dict['parentPeak'] = None

        # set to None if substructure_atoms (nullable) is None
        # and model_fields_set contains the field
        if self.substructure_atoms is None and "substructure_atoms" in self.model_fields_set:
            _dict['substructureAtoms'] = None

        # set to None if substructure_bonds (nullable) is None
        # and model_fields_set contains the field
        if self.substructure_bonds is None and "substructure_bonds" in self.model_fields_set:
            _dict['substructureBonds'] = None

        # set to None if substructure_bonds_cut (nullable) is None
        # and model_fields_set contains the field
        if self.substructure_bonds_cut is None and "substructure_bonds_cut" in self.model_fields_set:
            _dict['substructureBondsCut'] = None

        # set to None if substructure_score (nullable) is None
        # and model_fields_set contains the field
        if self.substructure_score is None and "substructure_score" in self.model_fields_set:
            _dict['substructureScore'] = None

        # set to None if hydrogen_rearrangements (nullable) is None
        # and model_fields_set contains the field
        if self.hydrogen_rearrangements is None and "hydrogen_rearrangements" in self.model_fields_set:
            _dict['hydrogenRearrangements'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of PeakAnnotation from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "fragmentId": obj.get("fragmentId"),
            "molecularFormula": obj.get("molecularFormula"),
            "ionization": obj.get("ionization"),
            "exactMass": obj.get("exactMass"),
            "massDeviationMz": obj.get("massDeviationMz"),
            "massDeviationPpm": obj.get("massDeviationPpm"),
            "recalibratedMassDeviationMz": obj.get("recalibratedMassDeviationMz"),
            "recalibratedMassDeviationPpm": obj.get("recalibratedMassDeviationPpm"),
            "parentPeak": ParentPeak.from_dict(obj["parentPeak"]) if obj.get("parentPeak") is not None else None,
            "substructureAtoms": obj.get("substructureAtoms"),
            "substructureBonds": obj.get("substructureBonds"),
            "substructureBondsCut": obj.get("substructureBondsCut"),
            "substructureScore": obj.get("substructureScore"),
            "hydrogenRearrangements": obj.get("hydrogenRearrangements")
        })
        return _obj


