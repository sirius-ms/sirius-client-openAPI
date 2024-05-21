# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.structure_candidate import StructureCandidate

class TestStructureCandidate(unittest.TestCase):
    """StructureCandidate unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> StructureCandidate:
        """Test StructureCandidate
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `StructureCandidate`
        """
        model = StructureCandidate()
        if include_optional:
            return StructureCandidate(
                inchi_key = '',
                smiles = '',
                structure_name = '',
                xlog_p = 1.337,
                db_links = [
                    PySirius.models.db_link.DBLink(
                        name = '', 
                        id = '', )
                    ],
                spectral_library_matches = [
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
                    ]
            )
        else:
            return StructureCandidate(
        )
        """

    def testStructureCandidate(self):
        """Test StructureCandidate"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
