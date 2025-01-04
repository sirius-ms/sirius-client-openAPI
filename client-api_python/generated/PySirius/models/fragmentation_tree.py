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

from pydantic import BaseModel, ConfigDict, Field, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.fragment_node import FragmentNode
from PySirius.models.loss_edge import LossEdge
from typing import Optional, Set
from typing_extensions import Self

class FragmentationTree(BaseModel):
    """
    Simple and easy serializable fragmentation tree model with annotated fragments/nodes abd losses/edges  Root fragment has index 0;  Molecular formula and adduct are identical to the ones of the corresponding molecular formula candidate and SpectrumAnnotation
    """ # noqa: E501
    fragments: Optional[List[FragmentNode]] = None
    losses: Optional[List[LossEdge]] = None
    tree_score: Optional[float] = Field(default=None, alias="treeScore")
    molecular_formula: Optional[StrictStr] = Field(default=None, alias="molecularFormula")
    adduct: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["fragments", "losses", "treeScore", "molecularFormula", "adduct"]

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
        """Create an instance of FragmentationTree from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in fragments (list)
        _items = []
        if self.fragments:
            for _item_fragments in self.fragments:
                if _item_fragments:
                    _items.append(_item_fragments.to_dict())
            _dict['fragments'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in losses (list)
        _items = []
        if self.losses:
            for _item_losses in self.losses:
                if _item_losses:
                    _items.append(_item_losses.to_dict())
            _dict['losses'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of FragmentationTree from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "fragments": [FragmentNode.from_dict(_item) for _item in obj["fragments"]] if obj.get("fragments") is not None else None,
            "losses": [LossEdge.from_dict(_item) for _item in obj["losses"]] if obj.get("losses") is not None else None,
            "treeScore": obj.get("treeScore"),
            "molecularFormula": obj.get("molecularFormula"),
            "adduct": obj.get("adduct")
        })
        return _obj


