# coding: utf-8

"""
    SIRIUS Nightsky API

    OpenAPI REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.The provided OpenAPI specification allows to autogenerate clients for different programming languages.  # noqa: E501

    OpenAPI spec version: 0.9
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six
from PySirius.models.compound_classes import CompoundClasses  # noqa: F401,E501
from PySirius.models.formula_candidate import FormulaCandidate  # noqa: F401,E501
from PySirius.models.structure_candidate import StructureCandidate  # noqa: F401,E501


class CompoundAnnotation(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """
    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'formula_annotation': 'FormulaCandidate',
        'structure_annotation': 'StructureCandidate',
        'compound_class_annotation': 'CompoundClasses'
    }

    attribute_map = {
        'formula_annotation': 'formulaAnnotation',
        'structure_annotation': 'structureAnnotation',
        'compound_class_annotation': 'compoundClassAnnotation'
    }

    def __init__(self, formula_annotation=None, structure_annotation=None, compound_class_annotation=None):  # noqa: E501
        """CompoundAnnotation - a model defined in Swagger"""  # noqa: E501
        self._formula_annotation = None
        self._structure_annotation = None
        self._compound_class_annotation = None
        self.discriminator = None
        if formula_annotation is not None:
            self.formula_annotation = formula_annotation
        if structure_annotation is not None:
            self.structure_annotation = structure_annotation
        if compound_class_annotation is not None:
            self.compound_class_annotation = compound_class_annotation

    @property
    def formula_annotation(self):
        """Gets the formula_annotation of this CompoundAnnotation.  # noqa: E501


        :return: The formula_annotation of this CompoundAnnotation.  # noqa: E501
        :rtype: FormulaCandidate
        """
        return self._formula_annotation

    @formula_annotation.setter
    def formula_annotation(self, formula_annotation):
        """Sets the formula_annotation of this CompoundAnnotation.


        :param formula_annotation: The formula_annotation of this CompoundAnnotation.  # noqa: E501
        :type: FormulaCandidate
        """

        self._formula_annotation = formula_annotation

    @property
    def structure_annotation(self):
        """Gets the structure_annotation of this CompoundAnnotation.  # noqa: E501


        :return: The structure_annotation of this CompoundAnnotation.  # noqa: E501
        :rtype: StructureCandidate
        """
        return self._structure_annotation

    @structure_annotation.setter
    def structure_annotation(self, structure_annotation):
        """Sets the structure_annotation of this CompoundAnnotation.


        :param structure_annotation: The structure_annotation of this CompoundAnnotation.  # noqa: E501
        :type: StructureCandidate
        """

        self._structure_annotation = structure_annotation

    @property
    def compound_class_annotation(self):
        """Gets the compound_class_annotation of this CompoundAnnotation.  # noqa: E501


        :return: The compound_class_annotation of this CompoundAnnotation.  # noqa: E501
        :rtype: CompoundClasses
        """
        return self._compound_class_annotation

    @compound_class_annotation.setter
    def compound_class_annotation(self, compound_class_annotation):
        """Sets the compound_class_annotation of this CompoundAnnotation.


        :param compound_class_annotation: The compound_class_annotation of this CompoundAnnotation.  # noqa: E501
        :type: CompoundClasses
        """

        self._compound_class_annotation = compound_class_annotation

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(CompoundAnnotation, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, CompoundAnnotation):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
