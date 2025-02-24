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

class IsotopePatternAnnotation(BaseModel):
    """
    IsotopePatternAnnotation
    """ # noqa: E501
    isotope_pattern: Optional[BasicSpectrum] = Field(default=None, alias="isotopePattern")
    simulated_pattern: Optional[BasicSpectrum] = Field(default=None, alias="simulatedPattern")
    __properties: ClassVar[List[str]] = ["isotopePattern", "simulatedPattern"]

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
        """Create an instance of IsotopePatternAnnotation from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of isotope_pattern
        if self.isotope_pattern:
            _dict['isotopePattern'] = self.isotope_pattern.to_dict()
        # override the default output from pydantic by calling `to_dict()` of simulated_pattern
        if self.simulated_pattern:
            _dict['simulatedPattern'] = self.simulated_pattern.to_dict()
        # set to None if isotope_pattern (nullable) is None
        # and model_fields_set contains the field
        if self.isotope_pattern is None and "isotope_pattern" in self.model_fields_set:
            _dict['isotopePattern'] = None

        # set to None if simulated_pattern (nullable) is None
        # and model_fields_set contains the field
        if self.simulated_pattern is None and "simulated_pattern" in self.model_fields_set:
            _dict['simulatedPattern'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of IsotopePatternAnnotation from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "isotopePattern": BasicSpectrum.from_dict(obj["isotopePattern"]) if obj.get("isotopePattern") is not None else None,
            "simulatedPattern": BasicSpectrum.from_dict(obj["simulatedPattern"]) if obj.get("simulatedPattern") is not None else None
        })
        return _obj


