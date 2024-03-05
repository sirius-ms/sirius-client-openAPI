# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.isotope_pattern_annotation import IsotopePatternAnnotation

class TestIsotopePatternAnnotation(unittest.TestCase):
    """IsotopePatternAnnotation unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> IsotopePatternAnnotation:
        """Test IsotopePatternAnnotation
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `IsotopePatternAnnotation`
        """
        model = IsotopePatternAnnotation()
        if include_optional:
            return IsotopePatternAnnotation(
                isotope_pattern = PySirius.models.basic_spectrum.BasicSpectrum(
                    name = '', 
                    ms_level = 56, 
                    collision_energy = '', 
                    precursor_mz = 1.337, 
                    scan_number = 56, 
                    peaks = [
                        PySirius.models.simple_peak.SimplePeak(
                            mz = 1.337, 
                            intensity = 1.337, )
                        ], 
                    abs_intensity_factor = 1.337, ),
                simulated_pattern = PySirius.models.basic_spectrum.BasicSpectrum(
                    name = '', 
                    ms_level = 56, 
                    collision_energy = '', 
                    precursor_mz = 1.337, 
                    scan_number = 56, 
                    peaks = [
                        PySirius.models.simple_peak.SimplePeak(
                            mz = 1.337, 
                            intensity = 1.337, )
                        ], 
                    abs_intensity_factor = 1.337, )
            )
        else:
            return IsotopePatternAnnotation(
        )
        """

    def testIsotopePatternAnnotation(self):
        """Test IsotopePatternAnnotation"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
