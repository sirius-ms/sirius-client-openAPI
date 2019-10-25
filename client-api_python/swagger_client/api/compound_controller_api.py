# coding: utf-8

"""
    Sirius Nightsky Middleware API

    Sirius Nightsky Middleware API  # noqa: E501

    OpenAPI spec version: 1.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class CompoundControllerApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def get_compound_ids_using_get(self, pid, **kwargs):  # noqa: E501
        """getCompoundIds  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_compound_ids_using_get(pid, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str pid: pid (required)
        :return: list[CompoundId]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_compound_ids_using_get_with_http_info(pid, **kwargs)  # noqa: E501
        else:
            (data) = self.get_compound_ids_using_get_with_http_info(pid, **kwargs)  # noqa: E501
            return data

    def get_compound_ids_using_get_with_http_info(self, pid, **kwargs):  # noqa: E501
        """getCompoundIds  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_compound_ids_using_get_with_http_info(pid, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str pid: pid (required)
        :return: list[CompoundId]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['pid']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_compound_ids_using_get" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'pid' is set
        if ('pid' not in params or
                params['pid'] is None):
            raise ValueError("Missing the required parameter `pid` when calling `get_compound_ids_using_get`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'pid' in params:
            path_params['pid'] = params['pid']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json;charset=UTF-8'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/api/projects/{pid}/compounds', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[CompoundId]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_compound_using_get(self, cid, pid, **kwargs):  # noqa: E501
        """getCompound  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_compound_using_get(cid, pid, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str cid: cid (required)
        :param str pid: pid (required)
        :return: CompoundMsData
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_compound_using_get_with_http_info(cid, pid, **kwargs)  # noqa: E501
        else:
            (data) = self.get_compound_using_get_with_http_info(cid, pid, **kwargs)  # noqa: E501
            return data

    def get_compound_using_get_with_http_info(self, cid, pid, **kwargs):  # noqa: E501
        """getCompound  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_compound_using_get_with_http_info(cid, pid, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str cid: cid (required)
        :param str pid: pid (required)
        :return: CompoundMsData
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['cid', 'pid']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_compound_using_get" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'cid' is set
        if ('cid' not in params or
                params['cid'] is None):
            raise ValueError("Missing the required parameter `cid` when calling `get_compound_using_get`")  # noqa: E501
        # verify the required parameter 'pid' is set
        if ('pid' not in params or
                params['pid'] is None):
            raise ValueError("Missing the required parameter `pid` when calling `get_compound_using_get`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'cid' in params:
            path_params['cid'] = params['cid']  # noqa: E501
        if 'pid' in params:
            path_params['pid'] = params['pid']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json;charset=UTF-8'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/api/projects/{pid}/compounds/{cid}', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='CompoundMsData',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
