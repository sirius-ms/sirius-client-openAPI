# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.annotated_spectrum import AnnotatedSpectrum

class TestAnnotatedSpectrum(unittest.TestCase):
    """AnnotatedSpectrum unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> AnnotatedSpectrum:
        """Test AnnotatedSpectrum
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `AnnotatedSpectrum`
        """
        model = AnnotatedSpectrum()
        if include_optional:
            return AnnotatedSpectrum(
                name = '',
                ms_level = 56,
                collision_energy = '',
                precursor_mz = 1.337,
                scan_number = 56,
                peaks = [
                    PySirius.models.annotated_peak.AnnotatedPeak(
                        mz = 1.337, 
                        intensity = 1.337, 
                        peak_annotation = PySirius.models.peak_annotation.PeakAnnotation(
                            fragment_id = 56, 
                            molecular_formula = '', 
                            ionization = '', 
                            exact_mass = 1.337, 
                            mass_deviation_mz = 1.337, 
                            mass_deviation_ppm = 1.337, 
                            recalibrated_mass_deviation_mz = 1.337, 
                            recalibrated_mass_deviation_ppm = 1.337, 
                            parent_peak = PySirius.models.parent_peak.ParentPeak(
                                parent_idx = 56, 
                                parent_fragment_id = 56, 
                                loss_formula = '', ), 
                            substructure_atoms = [
                                56
                                ], 
                            substructure_bonds = [
                                56
                                ], 
                            substructure_bonds_cut = [
                                56
                                ], 
                            substructure_score = 1.337, 
                            hydrogen_rearrangements = 56, ), )
                    ],
                abs_intensity_factor = 1.337,
                spectrum_annotation = PySirius.models.spectrum_annotation.SpectrumAnnotation(
                    molecular_formula = '', 
                    ionization = '', 
                    exact_mass = 1.337, 
                    mass_deviation_mz = 1.337, 
                    mass_deviation_ppm = 1.337, 
                    structure_annotation_smiles = '', 
                    structure_annotation_score = 1.337, )
            )
        else:
            return AnnotatedSpectrum(
                peaks = [
                    PySirius.models.annotated_peak.AnnotatedPeak(
                        mz = 1.337, 
                        intensity = 1.337, 
                        peak_annotation = PySirius.models.peak_annotation.PeakAnnotation(
                            fragment_id = 56, 
                            molecular_formula = '', 
                            ionization = '', 
                            exact_mass = 1.337, 
                            mass_deviation_mz = 1.337, 
                            mass_deviation_ppm = 1.337, 
                            recalibrated_mass_deviation_mz = 1.337, 
                            recalibrated_mass_deviation_ppm = 1.337, 
                            parent_peak = PySirius.models.parent_peak.ParentPeak(
                                parent_idx = 56, 
                                parent_fragment_id = 56, 
                                loss_formula = '', ), 
                            substructure_atoms = [
                                56
                                ], 
                            substructure_bonds = [
                                56
                                ], 
                            substructure_bonds_cut = [
                                56
                                ], 
                            substructure_score = 1.337, 
                            hydrogen_rearrangements = 56, ), )
                    ],
        )
        """

    def testAnnotatedSpectrum(self):
        """Test AnnotatedSpectrum"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
