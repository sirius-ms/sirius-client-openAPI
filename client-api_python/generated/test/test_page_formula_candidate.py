# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.page_formula_candidate import PageFormulaCandidate

class TestPageFormulaCandidate(unittest.TestCase):
    """PageFormulaCandidate unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> PageFormulaCandidate:
        """Test PageFormulaCandidate
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `PageFormulaCandidate`
        """
        model = PageFormulaCandidate()
        if include_optional:
            return PageFormulaCandidate(
                total_pages = 56,
                total_elements = 56,
                last = True,
                first = True,
                size = 56,
                content = [
                    PySirius.models.formula_candidate.FormulaCandidate(
                        formula_id = '', 
                        molecular_formula = '', 
                        adduct = '', 
                        rank = 56, 
                        sirius_score = 1.337, 
                        isotope_score = 1.337, 
                        tree_score = 1.337, 
                        zodiac_score = 1.337, 
                        num_of_explained_peaks = 56, 
                        num_of_explainable_peaks = 56, 
                        total_explained_intensity = 1.337, 
                        median_mass_deviation = PySirius.models.deviation.Deviation(
                            ppm = 1.337, 
                            absolute = 1.337, ), 
                        fragmentation_tree = PySirius.models.fragmentation_tree.FragmentationTree(
                            fragments = [
                                PySirius.models.fragment_node.FragmentNode(
                                    fragment_id = 56, 
                                    molecular_formula = '', 
                                    ion_type = '', 
                                    mass_deviation_da = 1.337, 
                                    mass_deviation_ppm = 1.337, 
                                    score = 1.337, 
                                    intensity = 1.337, 
                                    mz = 1.337, )
                                ], 
                            losses = [
                                PySirius.models.loss_edge.LossEdge(
                                    source_fragment_idx = 56, 
                                    target_fragment_idx = 56, 
                                    molecular_formula = '', 
                                    score = 1.337, )
                                ], 
                            tree_score = 1.337, ), 
                        annotated_spectrum = PySirius.models.annotated_spectrum.AnnotatedSpectrum(
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
                                structure_annotation_score = 1.337, ), ), 
                        isotope_pattern_annotation = PySirius.models.isotope_pattern_annotation.IsotopePatternAnnotation(
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
                                abs_intensity_factor = 1.337, ), ), 
                        lipid_annotation = PySirius.models.lipid_annotation.LipidAnnotation(
                            lipid_species = '', 
                            lipid_maps_id = '', 
                            lipid_class_name = '', 
                            hypothetical_structure = '', 
                            chains_unknown = True, ), 
                        predicted_fingerprint = [
                            1.337
                            ], 
                        compound_classes = PySirius.models.compound_classes.CompoundClasses(
                            npc_pathway = PySirius.models.compound_class.CompoundClass(
                                type = 'ClassyFire', 
                                level = '', 
                                name = '', 
                                description = '', 
                                id = 56, 
                                probability = 1.337, 
                                index = 56, ), 
                            npc_superclass = PySirius.models.compound_class.CompoundClass(
                                level = '', 
                                name = '', 
                                description = '', 
                                id = 56, 
                                probability = 1.337, 
                                index = 56, ), 
                            npc_class = , 
                            classy_fire_lineage = [
                                
                                ], 
                            classy_fire_alternatives = [
                                
                                ], ), 
                        canopus_prediction = PySirius.models.canopus_prediction.CanopusPrediction(
                            classy_fire_classes = [
                                
                                ], 
                            npc_classes = [
                                
                                ], ), )
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
                    paged = True, 
                    page_number = 56, 
                    page_size = 56, 
                    unpaged = True, ),
                empty = True
            )
        else:
            return PageFormulaCandidate(
        )
        """

    def testPageFormulaCandidate(self):
        """Test PageFormulaCandidate"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
