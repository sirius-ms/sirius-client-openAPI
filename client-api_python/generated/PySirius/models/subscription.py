# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.  # noqa: E501

    OpenAPI spec version: v0.9 on SIRIUS 5.6.3-SNAPSHOT
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

import pprint
import re  # noqa: F401

import six

class Subscription(object):
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
        'sid': 'str',
        'subscriber_id': 'str',
        'subscriber_name': 'str',
        'expiration_date': 'datetime',
        'start_date': 'datetime',
        'count_queries': 'bool',
        'compound_limit': 'int',
        'compound_hash_recording_time': 'int',
        'max_queries_per_compound': 'int',
        'max_user_accounts': 'int',
        'service_url': 'str',
        'description': 'str',
        'name': 'str',
        'tos': 'str',
        'pp': 'str'
    }

    attribute_map = {
        'sid': 'sid',
        'subscriber_id': 'subscriberId',
        'subscriber_name': 'subscriberName',
        'expiration_date': 'expirationDate',
        'start_date': 'startDate',
        'count_queries': 'countQueries',
        'compound_limit': 'compoundLimit',
        'compound_hash_recording_time': 'compoundHashRecordingTime',
        'max_queries_per_compound': 'maxQueriesPerCompound',
        'max_user_accounts': 'maxUserAccounts',
        'service_url': 'serviceUrl',
        'description': 'description',
        'name': 'name',
        'tos': 'tos',
        'pp': 'pp'
    }

    def __init__(self, sid=None, subscriber_id=None, subscriber_name=None, expiration_date=None, start_date=None, count_queries=None, compound_limit=None, compound_hash_recording_time=None, max_queries_per_compound=None, max_user_accounts=None, service_url=None, description=None, name=None, tos=None, pp=None):  # noqa: E501
        """Subscription - a model defined in Swagger"""  # noqa: E501
        self._sid = None
        self._subscriber_id = None
        self._subscriber_name = None
        self._expiration_date = None
        self._start_date = None
        self._count_queries = None
        self._compound_limit = None
        self._compound_hash_recording_time = None
        self._max_queries_per_compound = None
        self._max_user_accounts = None
        self._service_url = None
        self._description = None
        self._name = None
        self._tos = None
        self._pp = None
        self.discriminator = None
        if sid is not None:
            self.sid = sid
        if subscriber_id is not None:
            self.subscriber_id = subscriber_id
        if subscriber_name is not None:
            self.subscriber_name = subscriber_name
        if expiration_date is not None:
            self.expiration_date = expiration_date
        if start_date is not None:
            self.start_date = start_date
        if count_queries is not None:
            self.count_queries = count_queries
        if compound_limit is not None:
            self.compound_limit = compound_limit
        if compound_hash_recording_time is not None:
            self.compound_hash_recording_time = compound_hash_recording_time
        if max_queries_per_compound is not None:
            self.max_queries_per_compound = max_queries_per_compound
        if max_user_accounts is not None:
            self.max_user_accounts = max_user_accounts
        if service_url is not None:
            self.service_url = service_url
        if description is not None:
            self.description = description
        if name is not None:
            self.name = name
        if tos is not None:
            self.tos = tos
        if pp is not None:
            self.pp = pp

    @property
    def sid(self):
        """Gets the sid of this Subscription.  # noqa: E501


        :return: The sid of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._sid

    @sid.setter
    def sid(self, sid):
        """Sets the sid of this Subscription.


        :param sid: The sid of this Subscription.  # noqa: E501
        :type: str
        """

        self._sid = sid

    @property
    def subscriber_id(self):
        """Gets the subscriber_id of this Subscription.  # noqa: E501


        :return: The subscriber_id of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._subscriber_id

    @subscriber_id.setter
    def subscriber_id(self, subscriber_id):
        """Sets the subscriber_id of this Subscription.


        :param subscriber_id: The subscriber_id of this Subscription.  # noqa: E501
        :type: str
        """

        self._subscriber_id = subscriber_id

    @property
    def subscriber_name(self):
        """Gets the subscriber_name of this Subscription.  # noqa: E501


        :return: The subscriber_name of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._subscriber_name

    @subscriber_name.setter
    def subscriber_name(self, subscriber_name):
        """Sets the subscriber_name of this Subscription.


        :param subscriber_name: The subscriber_name of this Subscription.  # noqa: E501
        :type: str
        """

        self._subscriber_name = subscriber_name

    @property
    def expiration_date(self):
        """Gets the expiration_date of this Subscription.  # noqa: E501


        :return: The expiration_date of this Subscription.  # noqa: E501
        :rtype: datetime
        """
        return self._expiration_date

    @expiration_date.setter
    def expiration_date(self, expiration_date):
        """Sets the expiration_date of this Subscription.


        :param expiration_date: The expiration_date of this Subscription.  # noqa: E501
        :type: datetime
        """

        self._expiration_date = expiration_date

    @property
    def start_date(self):
        """Gets the start_date of this Subscription.  # noqa: E501


        :return: The start_date of this Subscription.  # noqa: E501
        :rtype: datetime
        """
        return self._start_date

    @start_date.setter
    def start_date(self, start_date):
        """Sets the start_date of this Subscription.


        :param start_date: The start_date of this Subscription.  # noqa: E501
        :type: datetime
        """

        self._start_date = start_date

    @property
    def count_queries(self):
        """Gets the count_queries of this Subscription.  # noqa: E501


        :return: The count_queries of this Subscription.  # noqa: E501
        :rtype: bool
        """
        return self._count_queries

    @count_queries.setter
    def count_queries(self, count_queries):
        """Sets the count_queries of this Subscription.


        :param count_queries: The count_queries of this Subscription.  # noqa: E501
        :type: bool
        """

        self._count_queries = count_queries

    @property
    def compound_limit(self):
        """Gets the compound_limit of this Subscription.  # noqa: E501


        :return: The compound_limit of this Subscription.  # noqa: E501
        :rtype: int
        """
        return self._compound_limit

    @compound_limit.setter
    def compound_limit(self, compound_limit):
        """Sets the compound_limit of this Subscription.


        :param compound_limit: The compound_limit of this Subscription.  # noqa: E501
        :type: int
        """

        self._compound_limit = compound_limit

    @property
    def compound_hash_recording_time(self):
        """Gets the compound_hash_recording_time of this Subscription.  # noqa: E501


        :return: The compound_hash_recording_time of this Subscription.  # noqa: E501
        :rtype: int
        """
        return self._compound_hash_recording_time

    @compound_hash_recording_time.setter
    def compound_hash_recording_time(self, compound_hash_recording_time):
        """Sets the compound_hash_recording_time of this Subscription.


        :param compound_hash_recording_time: The compound_hash_recording_time of this Subscription.  # noqa: E501
        :type: int
        """

        self._compound_hash_recording_time = compound_hash_recording_time

    @property
    def max_queries_per_compound(self):
        """Gets the max_queries_per_compound of this Subscription.  # noqa: E501


        :return: The max_queries_per_compound of this Subscription.  # noqa: E501
        :rtype: int
        """
        return self._max_queries_per_compound

    @max_queries_per_compound.setter
    def max_queries_per_compound(self, max_queries_per_compound):
        """Sets the max_queries_per_compound of this Subscription.


        :param max_queries_per_compound: The max_queries_per_compound of this Subscription.  # noqa: E501
        :type: int
        """

        self._max_queries_per_compound = max_queries_per_compound

    @property
    def max_user_accounts(self):
        """Gets the max_user_accounts of this Subscription.  # noqa: E501


        :return: The max_user_accounts of this Subscription.  # noqa: E501
        :rtype: int
        """
        return self._max_user_accounts

    @max_user_accounts.setter
    def max_user_accounts(self, max_user_accounts):
        """Sets the max_user_accounts of this Subscription.


        :param max_user_accounts: The max_user_accounts of this Subscription.  # noqa: E501
        :type: int
        """

        self._max_user_accounts = max_user_accounts

    @property
    def service_url(self):
        """Gets the service_url of this Subscription.  # noqa: E501


        :return: The service_url of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._service_url

    @service_url.setter
    def service_url(self, service_url):
        """Sets the service_url of this Subscription.


        :param service_url: The service_url of this Subscription.  # noqa: E501
        :type: str
        """

        self._service_url = service_url

    @property
    def description(self):
        """Gets the description of this Subscription.  # noqa: E501


        :return: The description of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._description

    @description.setter
    def description(self, description):
        """Sets the description of this Subscription.


        :param description: The description of this Subscription.  # noqa: E501
        :type: str
        """

        self._description = description

    @property
    def name(self):
        """Gets the name of this Subscription.  # noqa: E501


        :return: The name of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this Subscription.


        :param name: The name of this Subscription.  # noqa: E501
        :type: str
        """

        self._name = name

    @property
    def tos(self):
        """Gets the tos of this Subscription.  # noqa: E501


        :return: The tos of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._tos

    @tos.setter
    def tos(self, tos):
        """Sets the tos of this Subscription.


        :param tos: The tos of this Subscription.  # noqa: E501
        :type: str
        """

        self._tos = tos

    @property
    def pp(self):
        """Gets the pp of this Subscription.  # noqa: E501


        :return: The pp of this Subscription.  # noqa: E501
        :rtype: str
        """
        return self._pp

    @pp.setter
    def pp(self, pp):
        """Sets the pp of this Subscription.


        :param pp: The pp of this Subscription.  # noqa: E501
        :type: str
        """

        self._pp = pp

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
        if issubclass(Subscription, dict):
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
        if not isinstance(other, Subscription):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
