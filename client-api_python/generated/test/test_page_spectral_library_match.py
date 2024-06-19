# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.page_spectral_library_match import PageSpectralLibraryMatch

class TestPageSpectralLibraryMatch(unittest.TestCase):
    """PageSpectralLibraryMatch unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> PageSpectralLibraryMatch:
        """Test PageSpectralLibraryMatch
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `PageSpectralLibraryMatch`
        """
        model = PageSpectralLibraryMatch()
        if include_optional:
            return PageSpectralLibraryMatch(
                total_pages = 56,
                total_elements = 56,
                last = True,
                first = True,
                size = 56,
                content = [
                    PySirius.models.spectral_library_match.SpectralLibraryMatch(
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
                            abs_intensity_factor = 1.337, ), )
                    ],
                number = 56,
                sort = PySirius.models.sort_object.SortObject(
                    empty = True, 
                    sorted = True, 
                    unsorted = True, ),
                number_of_elements = 56,
                pageable = PySirius.models.pageable_object.PageableObject(
                    offset = 56, 
                    sort = PySirius.models.sort_object.SortObject(
                        empty = True, 
                        sorted = True, 
                        unsorted = True, ), 
                    page_number = 56, 
                    page_size = 56, 
                    paged = True, 
                    unpaged = True, ),
                empty = True
            )
        else:
            return PageSpectralLibraryMatch(
        )
        """

    def testPageSpectralLibraryMatch(self):
        """Test PageSpectralLibraryMatch"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
