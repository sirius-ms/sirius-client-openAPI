# coding: utf-8

"""Client side unit tests - no running SIRIUS instance required."""

import unittest

from PySirius.api_client import ApiClient


class TestApiClient(unittest.TestCase):
    """ApiClient behaviour that does not depend on a server"""

    def setUp(self) -> None:
        self.client = ApiClient()

    def test_accept_header_never_prefers_the_error_media_type(self) -> None:
        """SIRIUS documents its RFC 7807 error body on every operation.

        The stock "first media type containing json wins" rule then asks the CSV and text/plain
        endpoints for application/problem+json, and the server answers 406. Regression test for
        that: the error type may only be chosen when the operation offers nothing else.
        """
        self.assertEqual(
            "application/csv",
            self.client.select_header_accept(
                ["application/csv", "application/CSV", "application/problem+json"]))
        self.assertEqual(
            "text/plain;charset=UTF-8",
            self.client.select_header_accept(
                ["text/plain;charset=UTF-8", "application/problem+json"]))

    def test_accept_header_still_prefers_json_when_offered(self) -> None:
        self.assertEqual(
            "application/json",
            self.client.select_header_accept(["application/json", "application/problem+json"]))
        self.assertEqual(
            "application/json",
            self.client.select_header_accept(["text/plain", "application/json"]))

    def test_accept_header_falls_back_to_the_error_media_type_when_alone(self) -> None:
        self.assertEqual(
            "application/problem+json",
            self.client.select_header_accept(["application/problem+json"]))
        self.assertIsNone(self.client.select_header_accept([]))


if __name__ == '__main__':
    unittest.main()
