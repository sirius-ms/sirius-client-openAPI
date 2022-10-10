# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    OpenAPI spec version: v0.9 on SIRIUS 5.6.0-SNAPSHOT
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six

class AnnotatedSpectrum(object):
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
        'ms_level': 'int',
        'collision_energy': 'CollisionEnergy',
        'peaks': 'list[AnnotatedPeak]'
    }

    attribute_map = {
        'ms_level': 'msLevel',
        'collision_energy': 'collisionEnergy',
        'peaks': 'peaks'
    }

    def __init__(self, ms_level=None, collision_energy=None, peaks=None):  # noqa: E501
        """AnnotatedSpectrum - a model defined in Swagger"""  # noqa: E501
        self._ms_level = None
        self._collision_energy = None
        self._peaks = None
        self.discriminator = None
        if ms_level is not None:
            self.ms_level = ms_level
        if collision_energy is not None:
            self.collision_energy = collision_energy
        if peaks is not None:
            self.peaks = peaks

    @property
    def ms_level(self):
        """Gets the ms_level of this AnnotatedSpectrum.  # noqa: E501

        MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use 0  # noqa: E501

        :return: The ms_level of this AnnotatedSpectrum.  # noqa: E501
        :rtype: int
        """
        return self._ms_level

    @ms_level.setter
    def ms_level(self, ms_level):
        """Sets the ms_level of this AnnotatedSpectrum.

        MS level of the measured spectrum.  Artificial spectra with no msLevel (e.g. Simulated Isotope patterns) use 0  # noqa: E501

        :param ms_level: The ms_level of this AnnotatedSpectrum.  # noqa: E501
        :type: int
        """

        self._ms_level = ms_level

    @property
    def collision_energy(self):
        """Gets the collision_energy of this AnnotatedSpectrum.  # noqa: E501


        :return: The collision_energy of this AnnotatedSpectrum.  # noqa: E501
        :rtype: CollisionEnergy
        """
        return self._collision_energy

    @collision_energy.setter
    def collision_energy(self, collision_energy):
        """Sets the collision_energy of this AnnotatedSpectrum.


        :param collision_energy: The collision_energy of this AnnotatedSpectrum.  # noqa: E501
        :type: CollisionEnergy
        """

        self._collision_energy = collision_energy

    @property
    def peaks(self):
        """Gets the peaks of this AnnotatedSpectrum.  # noqa: E501


        :return: The peaks of this AnnotatedSpectrum.  # noqa: E501
        :rtype: list[AnnotatedPeak]
        """
        return self._peaks

    @peaks.setter
    def peaks(self, peaks):
        """Sets the peaks of this AnnotatedSpectrum.


        :param peaks: The peaks of this AnnotatedSpectrum.  # noqa: E501
        :type: list[AnnotatedPeak]
        """

        self._peaks = peaks

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
        if issubclass(AnnotatedSpectrum, dict):
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
        if not isinstance(other, AnnotatedSpectrum):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other