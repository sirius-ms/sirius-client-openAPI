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

class JobProgress(object):
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
        'indeterminate': 'bool',
        'state': 'str',
        'current_progress': 'int',
        'max_progress': 'int',
        'message': 'str',
        'error_message': 'str'
    }

    attribute_map = {
        'indeterminate': 'indeterminate',
        'state': 'state',
        'current_progress': 'currentProgress',
        'max_progress': 'maxProgress',
        'message': 'message',
        'error_message': 'errorMessage'
    }

    def __init__(self, indeterminate=None, state=None, current_progress=None, max_progress=None, message=None, error_message=None):  # noqa: E501
        """JobProgress - a model defined in Swagger"""  # noqa: E501
        self._indeterminate = None
        self._state = None
        self._current_progress = None
        self._max_progress = None
        self._message = None
        self._error_message = None
        self.discriminator = None
        if indeterminate is not None:
            self.indeterminate = indeterminate
        if state is not None:
            self.state = state
        if current_progress is not None:
            self.current_progress = current_progress
        if max_progress is not None:
            self.max_progress = max_progress
        if message is not None:
            self.message = message
        if error_message is not None:
            self.error_message = error_message

    @property
    def indeterminate(self):
        """Gets the indeterminate of this JobProgress.  # noqa: E501

        Is the progress indeterminate or not  # noqa: E501

        :return: The indeterminate of this JobProgress.  # noqa: E501
        :rtype: bool
        """
        return self._indeterminate

    @indeterminate.setter
    def indeterminate(self, indeterminate):
        """Sets the indeterminate of this JobProgress.

        Is the progress indeterminate or not  # noqa: E501

        :param indeterminate: The indeterminate of this JobProgress.  # noqa: E501
        :type: bool
        """

        self._indeterminate = indeterminate

    @property
    def state(self):
        """Gets the state of this JobProgress.  # noqa: E501

        Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully.  # noqa: E501

        :return: The state of this JobProgress.  # noqa: E501
        :rtype: str
        """
        return self._state

    @state.setter
    def state(self, state):
        """Sets the state of this JobProgress.

        Current state of the Jobs in the SIRIUS internal Job scheduler           WAITING: Waiting for submission to ExecutorService (e.g. due to dependent jobs)          READY: Ready for submission but not yet enqueued for submission to ExecutorService.          QUEUED: Enqueued for submission to ExecutorService.          SUBMITTED: Submitted and waiting to be executed.          RUNNING: Job is running.          CANCELED: Jobs is finished due to cancellation by suer or dependent jobs.          FAILED: Job is finished but failed.          DONE: Job finished successfully.  # noqa: E501

        :param state: The state of this JobProgress.  # noqa: E501
        :type: str
        """
        allowed_values = ["WAITING", "READY", "QUEUED", "SUBMITTED", "RUNNING", "CANCELED", "FAILED", "DONE"]  # noqa: E501
        if state not in allowed_values:
            raise ValueError(
                "Invalid value for `state` ({0}), must be one of {1}"  # noqa: E501
                .format(state, allowed_values)
            )

        self._state = state

    @property
    def current_progress(self):
        """Gets the current_progress of this JobProgress.  # noqa: E501

        Current progress value of the job.  # noqa: E501

        :return: The current_progress of this JobProgress.  # noqa: E501
        :rtype: int
        """
        return self._current_progress

    @current_progress.setter
    def current_progress(self, current_progress):
        """Sets the current_progress of this JobProgress.

        Current progress value of the job.  # noqa: E501

        :param current_progress: The current_progress of this JobProgress.  # noqa: E501
        :type: int
        """

        self._current_progress = current_progress

    @property
    def max_progress(self):
        """Gets the max_progress of this JobProgress.  # noqa: E501

        Progress value to reach (might also change during execution)  # noqa: E501

        :return: The max_progress of this JobProgress.  # noqa: E501
        :rtype: int
        """
        return self._max_progress

    @max_progress.setter
    def max_progress(self, max_progress):
        """Sets the max_progress of this JobProgress.

        Progress value to reach (might also change during execution)  # noqa: E501

        :param max_progress: The max_progress of this JobProgress.  # noqa: E501
        :type: int
        """

        self._max_progress = max_progress

    @property
    def message(self):
        """Gets the message of this JobProgress.  # noqa: E501

        Progress information and warnings.  # noqa: E501

        :return: The message of this JobProgress.  # noqa: E501
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message):
        """Sets the message of this JobProgress.

        Progress information and warnings.  # noqa: E501

        :param message: The message of this JobProgress.  # noqa: E501
        :type: str
        """

        self._message = message

    @property
    def error_message(self):
        """Gets the error_message of this JobProgress.  # noqa: E501

        Error message if the job did not finish successfully failed.  # noqa: E501

        :return: The error_message of this JobProgress.  # noqa: E501
        :rtype: str
        """
        return self._error_message

    @error_message.setter
    def error_message(self, error_message):
        """Sets the error_message of this JobProgress.

        Error message if the job did not finish successfully failed.  # noqa: E501

        :param error_message: The error_message of this JobProgress.  # noqa: E501
        :type: str
        """

        self._error_message = error_message

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
        if issubclass(JobProgress, dict):
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
        if not isinstance(other, JobProgress):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
