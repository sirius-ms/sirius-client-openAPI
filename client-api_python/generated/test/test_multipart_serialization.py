# coding: utf-8

"""
    SIRIUS Nightsky API

    Regression tests for the hand maintained parts of the generated Python client.

    These are pure unit tests: they need neither a running SIRIUS nor a login, because they only
    inspect what the generated code would put on the wire.
"""  # noqa: E501


import json
import unittest

from PySirius import ApiClient, Deviation, LcmsSubmissionParameters, ProjectsApi


class TestMultipartSerialization(unittest.TestCase):
    """The multipart 'parameters' part must use the property names of the API schema.

    The generated code serialises a model typed multipart form parameter itself (see the isModel
    branch of client-api_python/templates/python/api.mustache). Serialising it with a plain
    model_dump() would emit the python attribute names, i.e. snake_case. SIRIUS ignores unknown
    properties, so such a request is accepted but silently runs with server defaults instead of the
    caller's parameters. That is why this is tested rather than trusted.
    """

    def setUp(self) -> None:
        self.api = ProjectsApi(ApiClient())
        self.parameters = LcmsSubmissionParameters(
            align_lcms_runs=False,
            noise_intensity=0.05,
            trace_max_mass_deviation=Deviation(ppm=10.0, absolute=0.005),
        )

    def _parameters_part(self, serialized) -> dict:
        """the JSON body of the multipart part named 'parameters'"""
        for element in serialized:
            if isinstance(element, list):
                for name, value in element:
                    if name == "parameters":
                        self.assertEqual("application/json", value[2])
                        return json.loads(value[1])
        self.fail("no multipart part named 'parameters' was produced")

    def test_import_ms_run_data_uses_schema_property_names(self) -> None:
        part = self._parameters_part(self.api._import_ms_run_data_serialize(
            project_id="p", input_files=[b"data"], parameters=self.parameters,
            _request_auth=None, _content_type=None, _headers=None, _host_index=0))

        self.assertIn("alignLCMSRuns", part)
        self.assertIn("noiseIntensity", part)
        self.assertFalse([key for key in part if "_" in key],
                         f"python attribute names leaked into the request: {sorted(part)}")

    def test_import_ms_run_data_keeps_the_caller_values(self) -> None:
        part = self._parameters_part(self.api._import_ms_run_data_serialize(
            project_id="p", input_files=[b"data"], parameters=self.parameters,
            _request_auth=None, _content_type=None, _headers=None, _host_index=0))

        self.assertFalse(part["alignLCMSRuns"])
        self.assertEqual(0.05, part["noiseIntensity"])

    def test_nested_models_are_serialised_as_objects(self) -> None:
        part = self._parameters_part(self.api._import_ms_run_data_serialize(
            project_id="p", input_files=[b"data"], parameters=self.parameters,
            _request_auth=None, _content_type=None, _headers=None, _host_index=0))

        self.assertEqual({"ppm": 10.0, "absolute": 0.005}, part["traceMaxMassDeviation"])

    def test_import_ms_run_data_as_job_serialises_the_same_way(self) -> None:
        part = self._parameters_part(self.api._import_ms_run_data_as_job_serialize(
            project_id="p", input_files=[b"data"], parameters=self.parameters,
            opt_fields=None, _request_auth=None, _content_type=None, _headers=None, _host_index=0))

        self.assertIn("alignLCMSRuns", part)
        self.assertFalse([key for key in part if "_" in key])


if __name__ == '__main__':
    unittest.main()
