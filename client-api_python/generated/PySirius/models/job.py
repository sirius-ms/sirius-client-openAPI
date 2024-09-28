# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.job_progress import JobProgress
from typing import Optional, Set
from typing_extensions import Self

class Job(BaseModel):
    """
    Identifier created by the SIRIUS Nightsky API for a newly created Job.  Object can be enriched with Job status/progress information ({@link JobProgress JobProgress}) and/or Job command information.  This is a return value of the API. So nullable values can also be NOT_REQUIRED to allow for easy removal.
    """ # noqa: E501
    id: Optional[StrictStr] = Field(default=None, description="Unique identifier to access the job via the API")
    command: Optional[StrictStr] = Field(default=None, description="Command string of the executed Task")
    progress: Optional[JobProgress] = None
    affected_compound_ids: Optional[List[Optional[StrictStr]]] = Field(default=None, description="List of compoundIds that are affected by this job.  This lis will also contain compoundIds where not all features of the compound are affected by the job.  If this job is creating compounds (e.g. data import jobs) this value will be NULL until the jobs has finished", alias="affectedCompoundIds")
    affected_aligned_feature_ids: Optional[List[Optional[StrictStr]]] = Field(default=None, description="List of alignedFeatureIds that are affected by this job.  If this job is creating features (e.g. data import jobs) this value will be NULL until the jobs has finished", alias="affectedAlignedFeatureIds")
    __properties: ClassVar[List[str]] = ["id", "command", "progress", "affectedCompoundIds", "affectedAlignedFeatureIds"]

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
        """Create an instance of Job from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of progress
        if self.progress:
            _dict['progress'] = self.progress.to_dict()
        # set to None if command (nullable) is None
        # and model_fields_set contains the field
        if self.command is None and "command" in self.model_fields_set:
            _dict['command'] = None

        # set to None if progress (nullable) is None
        # and model_fields_set contains the field
        if self.progress is None and "progress" in self.model_fields_set:
            _dict['progress'] = None

        # set to None if affected_compound_ids (nullable) is None
        # and model_fields_set contains the field
        if self.affected_compound_ids is None and "affected_compound_ids" in self.model_fields_set:
            _dict['affectedCompoundIds'] = None

        # set to None if affected_aligned_feature_ids (nullable) is None
        # and model_fields_set contains the field
        if self.affected_aligned_feature_ids is None and "affected_aligned_feature_ids" in self.model_fields_set:
            _dict['affectedAlignedFeatureIds'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of Job from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "id": obj.get("id"),
            "command": obj.get("command"),
            "progress": JobProgress.from_dict(obj["progress"]) if obj.get("progress") is not None else None,
            "affectedCompoundIds": obj.get("affectedCompoundIds"),
            "affectedAlignedFeatureIds": obj.get("affectedAlignedFeatureIds")
        })
        return _obj


