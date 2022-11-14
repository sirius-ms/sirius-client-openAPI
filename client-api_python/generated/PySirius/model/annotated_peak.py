# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    The version of the OpenAPI document: v0.9 on SIRIUS 5.6.3-SNAPSHOT
    Generated by: https://openapi-generator.tech
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from PySirius import schemas  # noqa: F401


class AnnotatedPeak(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """


    class MetaOapg:
        
        class properties:
            mass = schemas.Float64Schema
            intensity = schemas.Float64Schema
            peakAnnotation = schemas.DictSchema
            __annotations__ = {
                "mass": mass,
                "intensity": intensity,
                "peakAnnotation": peakAnnotation,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["mass"]) -> MetaOapg.properties.mass: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["intensity"]) -> MetaOapg.properties.intensity: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["peakAnnotation"]) -> MetaOapg.properties.peakAnnotation: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["mass", "intensity", "peakAnnotation", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["mass"]) -> typing.Union[MetaOapg.properties.mass, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["intensity"]) -> typing.Union[MetaOapg.properties.intensity, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["peakAnnotation"]) -> typing.Union[MetaOapg.properties.peakAnnotation, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["mass", "intensity", "peakAnnotation", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        mass: typing.Union[MetaOapg.properties.mass, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        intensity: typing.Union[MetaOapg.properties.intensity, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        peakAnnotation: typing.Union[MetaOapg.properties.peakAnnotation, dict, frozendict.frozendict, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'AnnotatedPeak':
        return super().__new__(
            cls,
            *args,
            mass=mass,
            intensity=intensity,
            peakAnnotation=peakAnnotation,
            _configuration=_configuration,
            **kwargs,
        )