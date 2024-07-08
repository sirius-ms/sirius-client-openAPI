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

from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from PySirius.models.connection_error import ConnectionError
from PySirius.models.license_info import LicenseInfo
from PySirius.models.worker_list import WorkerList
from typing import Optional, Set
from typing_extensions import Self

class ConnectionCheck(BaseModel):
    """
    ConnectionCheck
    """ # noqa: E501
    worker_info: Optional[WorkerList] = Field(default=None, alias="workerInfo")
    license_info: LicenseInfo = Field(alias="licenseInfo")
    errors: List[ConnectionError] = Field(description="List of errors ordered by significance. first error should be reported and addressed first.  Following errors might just be follow-up errors")
    supports_pos_predictor_types: StrictBool = Field(alias="supportsPosPredictorTypes")
    available_workers: List[StrictStr] = Field(alias="availableWorkers")
    un_available_workers: List[StrictStr] = Field(alias="unAvailableWorkers")
    supports_all_predictor_types: StrictBool = Field(alias="supportsAllPredictorTypes")
    supports_neg_predictor_types: StrictBool = Field(alias="supportsNegPredictorTypes")
    __properties: ClassVar[List[str]] = ["workerInfo", "licenseInfo", "errors", "supportsPosPredictorTypes", "availableWorkers", "unAvailableWorkers", "supportsAllPredictorTypes", "supportsNegPredictorTypes"]

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
        """Create an instance of ConnectionCheck from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of worker_info
        if self.worker_info:
            _dict['workerInfo'] = self.worker_info.to_dict()
        # override the default output from pydantic by calling `to_dict()` of license_info
        if self.license_info:
            _dict['licenseInfo'] = self.license_info.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in errors (list)
        _items = []
        if self.errors:
            for _item in self.errors:
                if _item:
                    _items.append(_item.to_dict())
            _dict['errors'] = _items
        # set to None if worker_info (nullable) is None
        # and model_fields_set contains the field
        if self.worker_info is None and "worker_info" in self.model_fields_set:
            _dict['workerInfo'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of ConnectionCheck from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "workerInfo": WorkerList.from_dict(obj["workerInfo"]) if obj.get("workerInfo") is not None else None,
            "licenseInfo": LicenseInfo.from_dict(obj["licenseInfo"]) if obj.get("licenseInfo") is not None else None,
            "errors": [ConnectionError.from_dict(_item) for _item in obj["errors"]] if obj.get("errors") is not None else None,
            "supportsPosPredictorTypes": obj.get("supportsPosPredictorTypes"),
            "availableWorkers": obj.get("availableWorkers"),
            "unAvailableWorkers": obj.get("unAvailableWorkers"),
            "supportsAllPredictorTypes": obj.get("supportsAllPredictorTypes"),
            "supportsNegPredictorTypes": obj.get("supportsNegPredictorTypes")
        })
        return _obj


