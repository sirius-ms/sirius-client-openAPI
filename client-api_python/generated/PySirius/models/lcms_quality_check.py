# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    OpenAPI spec version: v0.9 on SIRIUS 6.0.0-SNAPSHOT
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six

class LCMSQualityCheck(object):
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
        'quality': 'str',
        'parameter_values': 'list[ParameterValue]',
        'description': 'str'
    }

    attribute_map = {
        'quality': 'quality',
        'parameter_values': 'parameterValues',
        'description': 'description'
    }

    def __init__(self, quality=None, parameter_values=None, description=None):  # noqa: E501
        """LCMSQualityCheck - a model defined in Swagger"""  # noqa: E501
        self._quality = None
        self._parameter_values = None
        self._description = None
        self.discriminator = None
        if quality is not None:
            self.quality = quality
        if parameter_values is not None:
            self.parameter_values = parameter_values
        if description is not None:
            self.description = description

    @property
    def quality(self):
        """Gets the quality of this LCMSQualityCheck.  # noqa: E501


        :return: The quality of this LCMSQualityCheck.  # noqa: E501
        :rtype: str
        """
        return self._quality

    @quality.setter
    def quality(self, quality):
        """Sets the quality of this LCMSQualityCheck.


        :param quality: The quality of this LCMSQualityCheck.  # noqa: E501
        :type: str
        """
        allowed_values = ["LOW", "MEDIUM", "GOOD"]  # noqa: E501
        if quality not in allowed_values:
            raise ValueError(
                "Invalid value for `quality` ({0}), must be one of {1}"  # noqa: E501
                .format(quality, allowed_values)
            )

        self._quality = quality

    @property
    def parameter_values(self):
        """Gets the parameter_values of this LCMSQualityCheck.  # noqa: E501


        :return: The parameter_values of this LCMSQualityCheck.  # noqa: E501
        :rtype: list[ParameterValue]
        """
        return self._parameter_values

    @parameter_values.setter
    def parameter_values(self, parameter_values):
        """Sets the parameter_values of this LCMSQualityCheck.


        :param parameter_values: The parameter_values of this LCMSQualityCheck.  # noqa: E501
        :type: list[ParameterValue]
        """

        self._parameter_values = parameter_values

    @property
    def description(self):
        """Gets the description of this LCMSQualityCheck.  # noqa: E501


        :return: The description of this LCMSQualityCheck.  # noqa: E501
        :rtype: str
        """
        return self._description

    @description.setter
    def description(self, description):
        """Sets the description of this LCMSQualityCheck.


        :param description: The description of this LCMSQualityCheck.  # noqa: E501
        :type: str
        """

        self._description = description

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
        if issubclass(LCMSQualityCheck, dict):
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
        if not isinstance(other, LCMSQualityCheck):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
