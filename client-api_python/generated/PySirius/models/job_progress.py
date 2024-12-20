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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.job_state import JobState
from typing import Optional, Set
from typing_extensions import Self

class JobProgress(BaseModel):
    """
    Progress information of a computation job that has already been submitted to SIRIUS.  if  currentProgress == maxProgress job is finished and should change to state done soon.  if a job is DONE all results can be accessed via the Project-Spaces api.
    """ # noqa: E501
    indeterminate: Optional[StrictBool] = Field(default=None, description="Is the progress indeterminate or not")
    state: Optional[JobState] = None
    current_progress: Optional[StrictInt] = Field(default=None, description="Current progress value of the job.", alias="currentProgress")
    max_progress: Optional[StrictInt] = Field(default=None, description="Progress value to reach (might also change during execution)", alias="maxProgress")
    message: Optional[StrictStr] = Field(default=None, description="Progress information and warnings.")
    error_message: Optional[StrictStr] = Field(default=None, description="Error message if the job did not finish successfully failed.", alias="errorMessage")
    __properties: ClassVar[List[str]] = ["indeterminate", "state", "currentProgress", "maxProgress", "message", "errorMessage"]

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
        """Create an instance of JobProgress from a JSON string"""
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
        # set to None if indeterminate (nullable) is None
        # and model_fields_set contains the field
        if self.indeterminate is None and "indeterminate" in self.model_fields_set:
            _dict['indeterminate'] = None

        # set to None if current_progress (nullable) is None
        # and model_fields_set contains the field
        if self.current_progress is None and "current_progress" in self.model_fields_set:
            _dict['currentProgress'] = None

        # set to None if max_progress (nullable) is None
        # and model_fields_set contains the field
        if self.max_progress is None and "max_progress" in self.model_fields_set:
            _dict['maxProgress'] = None

        # set to None if message (nullable) is None
        # and model_fields_set contains the field
        if self.message is None and "message" in self.model_fields_set:
            _dict['message'] = None

        # set to None if error_message (nullable) is None
        # and model_fields_set contains the field
        if self.error_message is None and "error_message" in self.model_fields_set:
            _dict['errorMessage'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of JobProgress from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "indeterminate": obj.get("indeterminate"),
            "state": obj.get("state"),
            "currentProgress": obj.get("currentProgress"),
            "maxProgress": obj.get("maxProgress"),
            "message": obj.get("message"),
            "errorMessage": obj.get("errorMessage")
        })
        return _obj


