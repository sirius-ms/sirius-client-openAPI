# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    OpenAPI spec version: v0.9 on SIRIUS 5.6.3
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six

class CanopusPredictions(object):
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
        'classy_fire_classes': 'list[CompoundClass]',
        'npc_classes': 'list[CompoundClass]'
    }

    attribute_map = {
        'classy_fire_classes': 'classyFireClasses',
        'npc_classes': 'npcClasses'
    }

    def __init__(self, classy_fire_classes=None, npc_classes=None):  # noqa: E501
        """CanopusPredictions - a model defined in Swagger"""  # noqa: E501
        self._classy_fire_classes = None
        self._npc_classes = None
        self.discriminator = None
        if classy_fire_classes is not None:
            self.classy_fire_classes = classy_fire_classes
        if npc_classes is not None:
            self.npc_classes = npc_classes

    @property
    def classy_fire_classes(self):
        """Gets the classy_fire_classes of this CanopusPredictions.  # noqa: E501

        All predicted ClassyFire classes  # noqa: E501

        :return: The classy_fire_classes of this CanopusPredictions.  # noqa: E501
        :rtype: list[CompoundClass]
        """
        return self._classy_fire_classes

    @classy_fire_classes.setter
    def classy_fire_classes(self, classy_fire_classes):
        """Sets the classy_fire_classes of this CanopusPredictions.

        All predicted ClassyFire classes  # noqa: E501

        :param classy_fire_classes: The classy_fire_classes of this CanopusPredictions.  # noqa: E501
        :type: list[CompoundClass]
        """

        self._classy_fire_classes = classy_fire_classes

    @property
    def npc_classes(self):
        """Gets the npc_classes of this CanopusPredictions.  # noqa: E501

        All predicted NPC classes  # noqa: E501

        :return: The npc_classes of this CanopusPredictions.  # noqa: E501
        :rtype: list[CompoundClass]
        """
        return self._npc_classes

    @npc_classes.setter
    def npc_classes(self, npc_classes):
        """Sets the npc_classes of this CanopusPredictions.

        All predicted NPC classes  # noqa: E501

        :param npc_classes: The npc_classes of this CanopusPredictions.  # noqa: E501
        :type: list[CompoundClass]
        """

        self._npc_classes = npc_classes

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
        if issubclass(CanopusPredictions, dict):
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
        if not isinstance(other, CanopusPredictions):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
