# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.spectral_library_match_summary import SpectralLibraryMatchSummary

class TestSpectralLibraryMatchSummary(unittest.TestCase):
    """SpectralLibraryMatchSummary unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SpectralLibraryMatchSummary:
        """Test SpectralLibraryMatchSummary
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SpectralLibraryMatchSummary`
        """
        model = SpectralLibraryMatchSummary()
        if include_optional:
            return SpectralLibraryMatchSummary(
                best_match = PySirius.models.spectral_library_match.SpectralLibraryMatch(
                    spec_match_id = '', 
                    rank = 56, 
                    similarity = 1.337, 
                    shared_peaks = 56, 
                    query_spectrum_index = 56, 
                    db_name = '', 
                    db_id = '', 
                    uuid = 56, 
                    splash = '', 
                    molecular_formula = '', 
                    adduct = '', 
                    exact_mass = '', 
                    smiles = '', 
                    candidate_in_chi_key = '', 
                    reference_spectrum = PySirius.models.basic_spectrum.BasicSpectrum(
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
                        abs_intensity_factor = 1.337, ), ),
                spectral_match_count = 56,
                reference_spectra_count = 56,
                database_compound_count = 56
            )
        else:
            return SpectralLibraryMatchSummary(
                spectral_match_count = 56,
                reference_spectra_count = 56,
                database_compound_count = 56,
        )
        """

    def testSpectralLibraryMatchSummary(self):
        """Test SpectralLibraryMatchSummary"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()