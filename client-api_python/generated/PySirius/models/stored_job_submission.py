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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List
from PySirius.models.job_submission import JobSubmission
from typing import Optional, Set
from typing_extensions import Self

class StoredJobSubmission(BaseModel):
    """
    StoredJobSubmission
    """ # noqa: E501
    name: StrictStr = Field(description="Unique name to identify this JobSubmission (job config).")
    editable: StrictBool = Field(description="False for predefined configs which are not editable and not removable.")
    job_submission: JobSubmission = Field(alias="jobSubmission")
    __properties: ClassVar[List[str]] = ["name", "editable", "jobSubmission"]

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
        """Create an instance of StoredJobSubmission from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of job_submission
        if self.job_submission:
            _dict['jobSubmission'] = self.job_submission.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of StoredJobSubmission from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "name": obj.get("name"),
            "editable": obj.get("editable"),
            "jobSubmission": JobSubmission.from_dict(obj["jobSubmission"]) if obj.get("jobSubmission") is not None else None
        })
        return _obj


