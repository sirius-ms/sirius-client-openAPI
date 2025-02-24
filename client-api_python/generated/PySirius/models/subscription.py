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

from datetime import datetime
from pydantic import BaseModel, ConfigDict, Field, StrictBool, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class Subscription(BaseModel):
    """
    Subscription
    """ # noqa: E501
    sid: Optional[StrictStr] = Field(default=None, description="Unique identifier of this subscription")
    subscriber_id: Optional[StrictStr] = Field(default=None, description="ID of the owner of the subscription.  This can be the ID of any SubscriptionOwner (e.g.  Group or  User)  depending on the level on which a subscription should be is valid.", alias="subscriberId")
    subscriber_name: Optional[StrictStr] = Field(default=None, description="Optional name of the owner of this subscription", alias="subscriberName")
    expiration_date: Optional[datetime] = Field(default=None, alias="expirationDate")
    start_date: Optional[datetime] = Field(default=None, alias="startDate")
    count_queries: Optional[StrictBool] = Field(default=None, alias="countQueries")
    instance_limit: Optional[StrictInt] = Field(default=None, description="Limit of instances (features) that can be computed with this subscription", alias="instanceLimit")
    instance_hash_recording_time: Optional[StrictInt] = Field(default=None, description="Hash is used to allow recomputing identical data without increasing counted instances (features).  The recording time is the amount of time an instance is memorized is", alias="instanceHashRecordingTime")
    max_queries_per_instance: Optional[StrictInt] = Field(default=None, description="Maximum number of queries (e.g. prediction) that can be performed  for one instance before it is counted another time.", alias="maxQueriesPerInstance")
    max_user_accounts: Optional[StrictInt] = Field(default=None, alias="maxUserAccounts")
    service_url: Optional[StrictStr] = Field(default=None, alias="serviceUrl")
    description: Optional[StrictStr] = None
    name: Optional[StrictStr] = None
    tos: Optional[StrictStr] = None
    pp: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["sid", "subscriberId", "subscriberName", "expirationDate", "startDate", "countQueries", "instanceLimit", "instanceHashRecordingTime", "maxQueriesPerInstance", "maxUserAccounts", "serviceUrl", "description", "name", "tos", "pp"]

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
        """Create an instance of Subscription from a JSON string"""
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
        # set to None if subscriber_name (nullable) is None
        # and model_fields_set contains the field
        if self.subscriber_name is None and "subscriber_name" in self.model_fields_set:
            _dict['subscriberName'] = None

        # set to None if expiration_date (nullable) is None
        # and model_fields_set contains the field
        if self.expiration_date is None and "expiration_date" in self.model_fields_set:
            _dict['expirationDate'] = None

        # set to None if start_date (nullable) is None
        # and model_fields_set contains the field
        if self.start_date is None and "start_date" in self.model_fields_set:
            _dict['startDate'] = None

        # set to None if count_queries (nullable) is None
        # and model_fields_set contains the field
        if self.count_queries is None and "count_queries" in self.model_fields_set:
            _dict['countQueries'] = None

        # set to None if instance_limit (nullable) is None
        # and model_fields_set contains the field
        if self.instance_limit is None and "instance_limit" in self.model_fields_set:
            _dict['instanceLimit'] = None

        # set to None if instance_hash_recording_time (nullable) is None
        # and model_fields_set contains the field
        if self.instance_hash_recording_time is None and "instance_hash_recording_time" in self.model_fields_set:
            _dict['instanceHashRecordingTime'] = None

        # set to None if max_queries_per_instance (nullable) is None
        # and model_fields_set contains the field
        if self.max_queries_per_instance is None and "max_queries_per_instance" in self.model_fields_set:
            _dict['maxQueriesPerInstance'] = None

        # set to None if max_user_accounts (nullable) is None
        # and model_fields_set contains the field
        if self.max_user_accounts is None and "max_user_accounts" in self.model_fields_set:
            _dict['maxUserAccounts'] = None

        # set to None if description (nullable) is None
        # and model_fields_set contains the field
        if self.description is None and "description" in self.model_fields_set:
            _dict['description'] = None

        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if tos (nullable) is None
        # and model_fields_set contains the field
        if self.tos is None and "tos" in self.model_fields_set:
            _dict['tos'] = None

        # set to None if pp (nullable) is None
        # and model_fields_set contains the field
        if self.pp is None and "pp" in self.model_fields_set:
            _dict['pp'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of Subscription from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "sid": obj.get("sid"),
            "subscriberId": obj.get("subscriberId"),
            "subscriberName": obj.get("subscriberName"),
            "expirationDate": obj.get("expirationDate"),
            "startDate": obj.get("startDate"),
            "countQueries": obj.get("countQueries"),
            "instanceLimit": obj.get("instanceLimit"),
            "instanceHashRecordingTime": obj.get("instanceHashRecordingTime"),
            "maxQueriesPerInstance": obj.get("maxQueriesPerInstance"),
            "maxUserAccounts": obj.get("maxUserAccounts"),
            "serviceUrl": obj.get("serviceUrl"),
            "description": obj.get("description"),
            "name": obj.get("name"),
            "tos": obj.get("tos"),
            "pp": obj.get("pp")
        })
        return _obj


