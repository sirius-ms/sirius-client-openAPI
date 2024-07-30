# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.connection_check import ConnectionCheck

class TestConnectionCheck(unittest.TestCase):
    """ConnectionCheck unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ConnectionCheck:
        """Test ConnectionCheck
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ConnectionCheck`
        """
        model = ConnectionCheck()
        if include_optional:
            return ConnectionCheck(
                license_info = PySirius.models.license_info.LicenseInfo(
                    user_email = '', 
                    user_id = '', 
                    subscription = PySirius.models.subscription.Subscription(
                        sid = '', 
                        subscriber_id = '', 
                        subscriber_name = '', 
                        expiration_date = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        start_date = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        count_queries = True, 
                        instance_limit = 56, 
                        instance_hash_recording_time = 56, 
                        max_queries_per_instance = 56, 
                        max_user_accounts = 56, 
                        service_url = '', 
                        description = '', 
                        name = '', 
                        tos = '', 
                        pp = '', ), 
                    consumables = PySirius.models.subscription_consumables.SubscriptionConsumables(
                        pending_jobs = 56, 
                        counted_compounds = 56, ), 
                    terms = [
                        PySirius.models.term.Term(
                            name = '', 
                            link = '', )
                        ], ),
                errors = [
                    PySirius.models.connection_error.ConnectionError(
                        error_type = 'WARNING', 
                        error_klass = 'UNKNOWN', 
                        sirius_error_code = 56, 
                        sirius_message = '', 
                        server_response_error_code = 56, 
                        server_response_error_message = '', 
                        warning = True, 
                        error = True, )
                    ]
            )
        else:
            return ConnectionCheck(
                license_info = PySirius.models.license_info.LicenseInfo(
                    user_email = '', 
                    user_id = '', 
                    subscription = PySirius.models.subscription.Subscription(
                        sid = '', 
                        subscriber_id = '', 
                        subscriber_name = '', 
                        expiration_date = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        start_date = datetime.datetime.strptime('2013-10-20 19:20:30.00', '%Y-%m-%d %H:%M:%S.%f'), 
                        count_queries = True, 
                        instance_limit = 56, 
                        instance_hash_recording_time = 56, 
                        max_queries_per_instance = 56, 
                        max_user_accounts = 56, 
                        service_url = '', 
                        description = '', 
                        name = '', 
                        tos = '', 
                        pp = '', ), 
                    consumables = PySirius.models.subscription_consumables.SubscriptionConsumables(
                        pending_jobs = 56, 
                        counted_compounds = 56, ), 
                    terms = [
                        PySirius.models.term.Term(
                            name = '', 
                            link = '', )
                        ], ),
                errors = [
                    PySirius.models.connection_error.ConnectionError(
                        error_type = 'WARNING', 
                        error_klass = 'UNKNOWN', 
                        sirius_error_code = 56, 
                        sirius_message = '', 
                        server_response_error_code = 56, 
                        server_response_error_message = '', 
                        warning = True, 
                        error = True, )
                    ],
        )
        """

    def testConnectionCheck(self):
        """Test ConnectionCheck"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
