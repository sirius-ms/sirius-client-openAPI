# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    OpenAPI spec version: v0.9 on SIRIUS 5.6.4-SNAPSHOT
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six

class UseHeuristic(object):
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
        'mz_to_use_heuristic': 'int',
        'mz_to_use_heuristic_only': 'int',
        'identifier': 'str'
    }

    attribute_map = {
        'mz_to_use_heuristic': 'mzToUseHeuristic',
        'mz_to_use_heuristic_only': 'mzToUseHeuristicOnly',
        'identifier': 'identifier'
    }

    def __init__(self, mz_to_use_heuristic=None, mz_to_use_heuristic_only=None, identifier=None):  # noqa: E501
        """UseHeuristic - a model defined in Swagger"""  # noqa: E501
        self._mz_to_use_heuristic = None
        self._mz_to_use_heuristic_only = None
        self._identifier = None
        self.discriminator = None
        if mz_to_use_heuristic is not None:
            self.mz_to_use_heuristic = mz_to_use_heuristic
        if mz_to_use_heuristic_only is not None:
            self.mz_to_use_heuristic_only = mz_to_use_heuristic_only
        if identifier is not None:
            self.identifier = identifier

    @property
    def mz_to_use_heuristic(self):
        """Gets the mz_to_use_heuristic of this UseHeuristic.  # noqa: E501


        :return: The mz_to_use_heuristic of this UseHeuristic.  # noqa: E501
        :rtype: int
        """
        return self._mz_to_use_heuristic

    @mz_to_use_heuristic.setter
    def mz_to_use_heuristic(self, mz_to_use_heuristic):
        """Sets the mz_to_use_heuristic of this UseHeuristic.


        :param mz_to_use_heuristic: The mz_to_use_heuristic of this UseHeuristic.  # noqa: E501
        :type: int
        """

        self._mz_to_use_heuristic = mz_to_use_heuristic

    @property
    def mz_to_use_heuristic_only(self):
        """Gets the mz_to_use_heuristic_only of this UseHeuristic.  # noqa: E501


        :return: The mz_to_use_heuristic_only of this UseHeuristic.  # noqa: E501
        :rtype: int
        """
        return self._mz_to_use_heuristic_only

    @mz_to_use_heuristic_only.setter
    def mz_to_use_heuristic_only(self, mz_to_use_heuristic_only):
        """Sets the mz_to_use_heuristic_only of this UseHeuristic.


        :param mz_to_use_heuristic_only: The mz_to_use_heuristic_only of this UseHeuristic.  # noqa: E501
        :type: int
        """

        self._mz_to_use_heuristic_only = mz_to_use_heuristic_only

    @property
    def identifier(self):
        """Gets the identifier of this UseHeuristic.  # noqa: E501


        :return: The identifier of this UseHeuristic.  # noqa: E501
        :rtype: str
        """
        return self._identifier

    @identifier.setter
    def identifier(self, identifier):
        """Sets the identifier of this UseHeuristic.


        :param identifier: The identifier of this UseHeuristic.  # noqa: E501
        :type: str
        """

        self._identifier = identifier

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
        if issubclass(UseHeuristic, dict):
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
        if not isinstance(other, UseHeuristic):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
