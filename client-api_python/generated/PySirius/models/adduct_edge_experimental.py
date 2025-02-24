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
from typing import Optional, Set
from typing_extensions import Self

class AdductEdgeExperimental(BaseModel):
    """
    EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
    """ # noqa: E501
    mz_delta: Optional[float] = Field(default=None, alias="mzDelta")
    annotation: Optional[StrictStr] = None
    var_from: Optional[StrictInt] = Field(default=None, alias="from")
    to: Optional[StrictInt] = None
    merged_correlation: Optional[float] = Field(default=None, alias="mergedCorrelation")
    representative_correlation: Optional[float] = Field(default=None, alias="representativeCorrelation")
    ms2cosine: Optional[float] = None
    pvalue: Optional[float] = None
    intensity_ratio_score: Optional[float] = Field(default=None, alias="intensityRatioScore")
    __properties: ClassVar[List[str]] = ["mzDelta", "annotation", "from", "to", "mergedCorrelation", "representativeCorrelation", "ms2cosine", "pvalue", "intensityRatioScore"]

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
        """Create an instance of AdductEdgeExperimental from a JSON string"""
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
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of AdductEdgeExperimental from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "mzDelta": obj.get("mzDelta"),
            "annotation": obj.get("annotation"),
            "from": obj.get("from"),
            "to": obj.get("to"),
            "mergedCorrelation": obj.get("mergedCorrelation"),
            "representativeCorrelation": obj.get("representativeCorrelation"),
            "ms2cosine": obj.get("ms2cosine"),
            "pvalue": obj.get("pvalue"),
            "intensityRatioScore": obj.get("intensityRatioScore")
        })
        return _obj


