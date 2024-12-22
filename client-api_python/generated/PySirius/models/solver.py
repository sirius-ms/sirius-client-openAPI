# coding: utf-8

"""
    SIRIUS Nightsky API


    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import json
from enum import Enum
from typing_extensions import Self


class Solver(str, Enum):
    """
    Solver
    """

    """
    allowed enum values
    """
    GUROBI = 'GUROBI'
    CPLEX = 'CPLEX'
    GLPK = 'GLPK'
    CLP = 'CLP'

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create an instance of Solver from a JSON string"""
        return cls(json.loads(json_str))


