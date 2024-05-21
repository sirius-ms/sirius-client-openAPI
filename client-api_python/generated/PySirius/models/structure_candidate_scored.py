# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from PySirius.models.binary_fingerprint import BinaryFingerprint
from PySirius.models.db_link import DBLink
from PySirius.models.spectral_library_match import SpectralLibraryMatch
from typing import Optional, Set
from typing_extensions import Self

class StructureCandidateScored(BaseModel):
    """
    StructureCandidateScored
    """ # noqa: E501
    inchi_key: Optional[StrictStr] = Field(default=None, alias="inchiKey")
    smiles: Optional[StrictStr] = None
    structure_name: Optional[StrictStr] = Field(default=None, alias="structureName")
    xlog_p: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, alias="xlogP")
    db_links: Optional[List[Optional[DBLink]]] = Field(default=None, description="List of structure database links belonging to this structure candidate  OPTIONAL: needs to be added by parameter", alias="dbLinks")
    spectral_library_matches: Optional[List[Optional[SpectralLibraryMatch]]] = Field(default=None, description="List of spectral library matches belonging to this structure candidate  OPTIONAL: needs to be added by parameter", alias="spectralLibraryMatches")
    rank: Optional[StrictInt] = Field(default=None, description="the overall rank of this candidate among all candidates of this feature")
    csi_score: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="CSI:FingerID score of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID  This is the score used for ranking structure candidates", alias="csiScore")
    tanimoto_similarity: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Tanimoto similarly of the fingerprint of this compound to the predicted fingerprint of CSI:FingerID", alias="tanimotoSimilarity")
    mces_dist_to_top_hit: Optional[Union[StrictFloat, StrictInt]] = Field(default=None, description="Maximum Common Edge Subgraph (MCES) distance to the top scoring hit (CSI:FingerID) in a candidate list.", alias="mcesDistToTopHit")
    fingerprint: Optional[BinaryFingerprint] = None
    __properties: ClassVar[List[str]] = ["inchiKey", "smiles", "structureName", "xlogP", "dbLinks", "spectralLibraryMatches", "rank", "csiScore", "tanimotoSimilarity", "mcesDistToTopHit", "fingerprint"]

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
        """Create an instance of StructureCandidateScored from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in db_links (list)
        _items = []
        if self.db_links:
            for _item in self.db_links:
                if _item:
                    _items.append(_item.to_dict())
            _dict['dbLinks'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in spectral_library_matches (list)
        _items = []
        if self.spectral_library_matches:
            for _item in self.spectral_library_matches:
                if _item:
                    _items.append(_item.to_dict())
            _dict['spectralLibraryMatches'] = _items
        # override the default output from pydantic by calling `to_dict()` of fingerprint
        if self.fingerprint:
            _dict['fingerprint'] = self.fingerprint.to_dict()
        # set to None if structure_name (nullable) is None
        # and model_fields_set contains the field
        if self.structure_name is None and "structure_name" in self.model_fields_set:
            _dict['structureName'] = None

        # set to None if xlog_p (nullable) is None
        # and model_fields_set contains the field
        if self.xlog_p is None and "xlog_p" in self.model_fields_set:
            _dict['xlogP'] = None

        # set to None if db_links (nullable) is None
        # and model_fields_set contains the field
        if self.db_links is None and "db_links" in self.model_fields_set:
            _dict['dbLinks'] = None

        # set to None if spectral_library_matches (nullable) is None
        # and model_fields_set contains the field
        if self.spectral_library_matches is None and "spectral_library_matches" in self.model_fields_set:
            _dict['spectralLibraryMatches'] = None

        # set to None if tanimoto_similarity (nullable) is None
        # and model_fields_set contains the field
        if self.tanimoto_similarity is None and "tanimoto_similarity" in self.model_fields_set:
            _dict['tanimotoSimilarity'] = None

        # set to None if mces_dist_to_top_hit (nullable) is None
        # and model_fields_set contains the field
        if self.mces_dist_to_top_hit is None and "mces_dist_to_top_hit" in self.model_fields_set:
            _dict['mcesDistToTopHit'] = None

        # set to None if fingerprint (nullable) is None
        # and model_fields_set contains the field
        if self.fingerprint is None and "fingerprint" in self.model_fields_set:
            _dict['fingerprint'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of StructureCandidateScored from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "inchiKey": obj.get("inchiKey"),
            "smiles": obj.get("smiles"),
            "structureName": obj.get("structureName"),
            "xlogP": obj.get("xlogP"),
            "dbLinks": [DBLink.from_dict(_item) for _item in obj["dbLinks"]] if obj.get("dbLinks") is not None else None,
            "spectralLibraryMatches": [SpectralLibraryMatch.from_dict(_item) for _item in obj["spectralLibraryMatches"]] if obj.get("spectralLibraryMatches") is not None else None,
            "rank": obj.get("rank"),
            "csiScore": obj.get("csiScore"),
            "tanimotoSimilarity": obj.get("tanimotoSimilarity"),
            "mcesDistToTopHit": obj.get("mcesDistToTopHit"),
            "fingerprint": BinaryFingerprint.from_dict(obj["fingerprint"]) if obj.get("fingerprint") is not None else None
        })
        return _obj


