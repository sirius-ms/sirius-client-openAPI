# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 3.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.adduct_network_experimental import AdductNetworkExperimental
from PySirius.models.axes import Axes
from PySirius.models.trace_experimental import TraceExperimental
from typing import Optional, Set
from typing_extensions import Self

class TraceSetExperimental(BaseModel):
    """
    EXPERIMENTAL: This schema is experimental and may be changed (or even removed) without notice until it is declared stable.
    """ # noqa: E501
    adduct_network: Optional[AdductNetworkExperimental] = Field(default=None, alias="adductNetwork")
    sample_id: Optional[StrictInt] = Field(default=None, alias="sampleId")
    sample_name: Optional[StrictStr] = Field(default=None, alias="sampleName")
    axes: Optional[Axes] = None
    traces: Optional[List[TraceExperimental]] = None
    __properties: ClassVar[List[str]] = ["adductNetwork", "sampleId", "sampleName", "axes", "traces"]

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
        """Create an instance of TraceSetExperimental from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of adduct_network
        if self.adduct_network:
            _dict['adductNetwork'] = self.adduct_network.to_dict()
        # override the default output from pydantic by calling `to_dict()` of axes
        if self.axes:
            _dict['axes'] = self.axes.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in traces (list)
        _items = []
        if self.traces:
            for _item_traces in self.traces:
                if _item_traces:
                    _items.append(_item_traces.to_dict())
            _dict['traces'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of TraceSetExperimental from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "adductNetwork": AdductNetworkExperimental.from_dict(obj["adductNetwork"]) if obj.get("adductNetwork") is not None else None,
            "sampleId": obj.get("sampleId"),
            "sampleName": obj.get("sampleName"),
            "axes": Axes.from_dict(obj["axes"]) if obj.get("axes") is not None else None,
            "traces": [TraceExperimental.from_dict(_item) for _item in obj["traces"]] if obj.get("traces") is not None else None
        })
        return _obj

