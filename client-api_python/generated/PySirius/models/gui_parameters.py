# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, Field, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.gui_result_tab import GuiResultTab
from typing import Optional, Set
from typing_extensions import Self

class GuiParameters(BaseModel):
    """
    Parameters to \"remote control\" the SIRIUS GUI.
    """ # noqa: E501
    selected_tab: Optional[GuiResultTab] = Field(default=None, alias="selectedTab")
    cid: Optional[StrictStr] = Field(default=None, description="ID of Selected compound.")
    fid: Optional[StrictStr] = Field(default=None, description="ID of Selected Formula candidate of the selected compound.")
    structure_candidate_in_ch_i_key: Optional[StrictStr] = Field(default=None, description="InChIKey of selected structure candidate of selected formula candidate.", alias="structureCandidateInChIKey")
    bring_to_front: Optional[StrictBool] = Field(default=None, description="If true bring SIRIUS GUI window to foreground.", alias="bringToFront")
    __properties: ClassVar[List[str]] = ["selectedTab", "cid", "fid", "structureCandidateInChIKey", "bringToFront"]

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
        """Create an instance of GuiParameters from a JSON string"""
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
        # set to None if selected_tab (nullable) is None
        # and model_fields_set contains the field
        if self.selected_tab is None and "selected_tab" in self.model_fields_set:
            _dict['selectedTab'] = None

        # set to None if cid (nullable) is None
        # and model_fields_set contains the field
        if self.cid is None and "cid" in self.model_fields_set:
            _dict['cid'] = None

        # set to None if fid (nullable) is None
        # and model_fields_set contains the field
        if self.fid is None and "fid" in self.model_fields_set:
            _dict['fid'] = None

        # set to None if structure_candidate_in_ch_i_key (nullable) is None
        # and model_fields_set contains the field
        if self.structure_candidate_in_ch_i_key is None and "structure_candidate_in_ch_i_key" in self.model_fields_set:
            _dict['structureCandidateInChIKey'] = None

        # set to None if bring_to_front (nullable) is None
        # and model_fields_set contains the field
        if self.bring_to_front is None and "bring_to_front" in self.model_fields_set:
            _dict['bringToFront'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of GuiParameters from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "selectedTab": obj.get("selectedTab"),
            "cid": obj.get("cid"),
            "fid": obj.get("fid"),
            "structureCandidateInChIKey": obj.get("structureCandidateInChIKey"),
            "bringToFront": obj.get("bringToFront")
        })
        return _obj


