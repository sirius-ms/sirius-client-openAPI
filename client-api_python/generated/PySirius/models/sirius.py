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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.instrument_profile import InstrumentProfile
from PySirius.models.isotope_ms2_strategy import IsotopeMs2Strategy
from PySirius.models.timeout import Timeout
from PySirius.models.use_heuristic import UseHeuristic
from typing import Optional, Set
from typing_extensions import Self

class Sirius(BaseModel):
    """
    User/developer friendly parameter subset for the Formula/SIRIUS tool  Can use results from Spectral library search tool.
    """ # noqa: E501
    enabled: Optional[StrictBool] = Field(default=None, description="tags whether the tool is enabled")
    profile: Optional[InstrumentProfile] = None
    number_of_candidates: Optional[StrictInt] = Field(default=None, description="Number of formula candidates to keep as result list (Formula Candidates).", alias="numberOfCandidates")
    number_of_candidates_per_ionization: Optional[StrictInt] = Field(default=None, description="Use this parameter if you want to force SIRIUS to report at least  NumberOfCandidatesPerIonization results per ionization.  if <= 0, this parameter will have no effect and just the top  NumberOfCandidates results will be reported.", alias="numberOfCandidatesPerIonization")
    mass_accuracy_ms2ppm: Optional[float] = Field(default=None, description="Maximum allowed mass deviation. Only molecular formulas within this mass window are considered.", alias="massAccuracyMS2ppm")
    isotope_ms2_settings: Optional[IsotopeMs2Strategy] = Field(default=None, alias="isotopeMs2Settings")
    filter_by_isotope_pattern: Optional[StrictBool] = Field(default=None, description="When filtering is enabled, molecular formulas are excluded if their theoretical isotope pattern does not match the theoretical one, even if their MS/MS pattern has high score.", alias="filterByIsotopePattern")
    enforce_el_gordo_formula: Optional[StrictBool] = Field(default=None, description="El Gordo may predict that an MS/MS spectrum is a lipid spectrum. If enabled, the corresponding molecular formula will be enforeced as molecular formula candidate.", alias="enforceElGordoFormula")
    perform_bottom_up_search: Optional[StrictBool] = Field(default=None, description="If true, molecular formula generation via bottom up search is enabled.", alias="performBottomUpSearch")
    perform_denovo_below_mz: Optional[float] = Field(default=None, description="Specifies the m/z below which de novo molecular formula generation is enabled. Set to 0 to disable de novo molecular formula generation.", alias="performDenovoBelowMz")
    formula_search_dbs: Optional[List[Optional[StrictStr]]] = Field(default=None, description="List Structure database to extract molecular formulas from to reduce formula search space.  SIRIUS is quite good at de novo formula annotation, so only enable if you have a good reason.", alias="formulaSearchDBs")
    apply_formula_constraints_to_db_and_bottom_up_search: Optional[StrictBool] = Field(default=None, description="By default, the formula (element) constraints are only applied to de novo molecular formula generation.  If true, the constraints are as well applied to database search and bottom up search.", alias="applyFormulaConstraintsToDBAndBottomUpSearch")
    enforced_formula_constraints: Optional[StrictStr] = Field(default=None, description="These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Enforced: Enforced elements are always considered", alias="enforcedFormulaConstraints")
    fallback_formula_constraints: Optional[StrictStr] = Field(default=None, description="These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Fallback: Fallback elements are used, if the auto-detection fails (e.g. no isotope pattern available)", alias="fallbackFormulaConstraints")
    detectable_elements: Optional[List[Optional[StrictStr]]] = Field(default=None, description="These configurations hold the information how to autodetect elements based on the given formula constraints.  Note: If the compound is already assigned to a specific molecular formula, this annotation is ignored.  <p>  Detectable: Detectable elements are added to the chemical alphabet, if there are indications for them (e.g. in isotope pattern)", alias="detectableElements")
    ilp_timeout: Optional[Timeout] = Field(default=None, alias="ilpTimeout")
    use_heuristic: Optional[UseHeuristic] = Field(default=None, alias="useHeuristic")
    inject_spec_lib_match_formulas: Optional[StrictBool] = Field(default=None, description="If true formula candidates that belong to spectral library matches above a certain threshold will  we inject/preserved for further analyses no matter which score they have or which filter is applied", alias="injectSpecLibMatchFormulas")
    min_score_to_inject_spec_lib_match: Optional[float] = Field(default=None, description="Similarity Threshold to inject formula candidates no matter which score/rank they have or which filter settings are applied.  If threshold >= 0 formulas candidates with reference spectrum similarity above the threshold will be injected.", alias="minScoreToInjectSpecLibMatch")
    min_peaks_to_inject_spec_lib_match: Optional[StrictInt] = Field(default=None, description="Matching peaks threshold to inject formula candidates no matter which score they have or which filter is applied.", alias="minPeaksToInjectSpecLibMatch")
    __properties: ClassVar[List[str]] = ["enabled", "profile", "numberOfCandidates", "numberOfCandidatesPerIonization", "massAccuracyMS2ppm", "isotopeMs2Settings", "filterByIsotopePattern", "enforceElGordoFormula", "performBottomUpSearch", "performDenovoBelowMz", "formulaSearchDBs", "applyFormulaConstraintsToDBAndBottomUpSearch", "enforcedFormulaConstraints", "fallbackFormulaConstraints", "detectableElements", "ilpTimeout", "useHeuristic", "injectSpecLibMatchFormulas", "minScoreToInjectSpecLibMatch", "minPeaksToInjectSpecLibMatch"]

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
        """Create an instance of Sirius from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of ilp_timeout
        if self.ilp_timeout:
            _dict['ilpTimeout'] = self.ilp_timeout.to_dict()
        # override the default output from pydantic by calling `to_dict()` of use_heuristic
        if self.use_heuristic:
            _dict['useHeuristic'] = self.use_heuristic.to_dict()
        # set to None if profile (nullable) is None
        # and model_fields_set contains the field
        if self.profile is None and "profile" in self.model_fields_set:
            _dict['profile'] = None

        # set to None if number_of_candidates (nullable) is None
        # and model_fields_set contains the field
        if self.number_of_candidates is None and "number_of_candidates" in self.model_fields_set:
            _dict['numberOfCandidates'] = None

        # set to None if number_of_candidates_per_ionization (nullable) is None
        # and model_fields_set contains the field
        if self.number_of_candidates_per_ionization is None and "number_of_candidates_per_ionization" in self.model_fields_set:
            _dict['numberOfCandidatesPerIonization'] = None

        # set to None if mass_accuracy_ms2ppm (nullable) is None
        # and model_fields_set contains the field
        if self.mass_accuracy_ms2ppm is None and "mass_accuracy_ms2ppm" in self.model_fields_set:
            _dict['massAccuracyMS2ppm'] = None

        # set to None if isotope_ms2_settings (nullable) is None
        # and model_fields_set contains the field
        if self.isotope_ms2_settings is None and "isotope_ms2_settings" in self.model_fields_set:
            _dict['isotopeMs2Settings'] = None

        # set to None if filter_by_isotope_pattern (nullable) is None
        # and model_fields_set contains the field
        if self.filter_by_isotope_pattern is None and "filter_by_isotope_pattern" in self.model_fields_set:
            _dict['filterByIsotopePattern'] = None

        # set to None if enforce_el_gordo_formula (nullable) is None
        # and model_fields_set contains the field
        if self.enforce_el_gordo_formula is None and "enforce_el_gordo_formula" in self.model_fields_set:
            _dict['enforceElGordoFormula'] = None

        # set to None if perform_bottom_up_search (nullable) is None
        # and model_fields_set contains the field
        if self.perform_bottom_up_search is None and "perform_bottom_up_search" in self.model_fields_set:
            _dict['performBottomUpSearch'] = None

        # set to None if perform_denovo_below_mz (nullable) is None
        # and model_fields_set contains the field
        if self.perform_denovo_below_mz is None and "perform_denovo_below_mz" in self.model_fields_set:
            _dict['performDenovoBelowMz'] = None

        # set to None if formula_search_dbs (nullable) is None
        # and model_fields_set contains the field
        if self.formula_search_dbs is None and "formula_search_dbs" in self.model_fields_set:
            _dict['formulaSearchDBs'] = None

        # set to None if apply_formula_constraints_to_db_and_bottom_up_search (nullable) is None
        # and model_fields_set contains the field
        if self.apply_formula_constraints_to_db_and_bottom_up_search is None and "apply_formula_constraints_to_db_and_bottom_up_search" in self.model_fields_set:
            _dict['applyFormulaConstraintsToDBAndBottomUpSearch'] = None

        # set to None if enforced_formula_constraints (nullable) is None
        # and model_fields_set contains the field
        if self.enforced_formula_constraints is None and "enforced_formula_constraints" in self.model_fields_set:
            _dict['enforcedFormulaConstraints'] = None

        # set to None if fallback_formula_constraints (nullable) is None
        # and model_fields_set contains the field
        if self.fallback_formula_constraints is None and "fallback_formula_constraints" in self.model_fields_set:
            _dict['fallbackFormulaConstraints'] = None

        # set to None if detectable_elements (nullable) is None
        # and model_fields_set contains the field
        if self.detectable_elements is None and "detectable_elements" in self.model_fields_set:
            _dict['detectableElements'] = None

        # set to None if ilp_timeout (nullable) is None
        # and model_fields_set contains the field
        if self.ilp_timeout is None and "ilp_timeout" in self.model_fields_set:
            _dict['ilpTimeout'] = None

        # set to None if use_heuristic (nullable) is None
        # and model_fields_set contains the field
        if self.use_heuristic is None and "use_heuristic" in self.model_fields_set:
            _dict['useHeuristic'] = None

        # set to None if inject_spec_lib_match_formulas (nullable) is None
        # and model_fields_set contains the field
        if self.inject_spec_lib_match_formulas is None and "inject_spec_lib_match_formulas" in self.model_fields_set:
            _dict['injectSpecLibMatchFormulas'] = None

        # set to None if min_score_to_inject_spec_lib_match (nullable) is None
        # and model_fields_set contains the field
        if self.min_score_to_inject_spec_lib_match is None and "min_score_to_inject_spec_lib_match" in self.model_fields_set:
            _dict['minScoreToInjectSpecLibMatch'] = None

        # set to None if min_peaks_to_inject_spec_lib_match (nullable) is None
        # and model_fields_set contains the field
        if self.min_peaks_to_inject_spec_lib_match is None and "min_peaks_to_inject_spec_lib_match" in self.model_fields_set:
            _dict['minPeaksToInjectSpecLibMatch'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of Sirius from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "enabled": obj.get("enabled"),
            "profile": obj.get("profile"),
            "numberOfCandidates": obj.get("numberOfCandidates"),
            "numberOfCandidatesPerIonization": obj.get("numberOfCandidatesPerIonization"),
            "massAccuracyMS2ppm": obj.get("massAccuracyMS2ppm"),
            "isotopeMs2Settings": obj.get("isotopeMs2Settings"),
            "filterByIsotopePattern": obj.get("filterByIsotopePattern"),
            "enforceElGordoFormula": obj.get("enforceElGordoFormula"),
            "performBottomUpSearch": obj.get("performBottomUpSearch"),
            "performDenovoBelowMz": obj.get("performDenovoBelowMz"),
            "formulaSearchDBs": obj.get("formulaSearchDBs"),
            "applyFormulaConstraintsToDBAndBottomUpSearch": obj.get("applyFormulaConstraintsToDBAndBottomUpSearch"),
            "enforcedFormulaConstraints": obj.get("enforcedFormulaConstraints"),
            "fallbackFormulaConstraints": obj.get("fallbackFormulaConstraints"),
            "detectableElements": obj.get("detectableElements"),
            "ilpTimeout": Timeout.from_dict(obj["ilpTimeout"]) if obj.get("ilpTimeout") is not None else None,
            "useHeuristic": UseHeuristic.from_dict(obj["useHeuristic"]) if obj.get("useHeuristic") is not None else None,
            "injectSpecLibMatchFormulas": obj.get("injectSpecLibMatchFormulas"),
            "minScoreToInjectSpecLibMatch": obj.get("minScoreToInjectSpecLibMatch"),
            "minPeaksToInjectSpecLibMatch": obj.get("minPeaksToInjectSpecLibMatch")
        })
        return _obj


