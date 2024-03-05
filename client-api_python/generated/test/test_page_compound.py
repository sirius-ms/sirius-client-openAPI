# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6.0.0-SNAPSHOT

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.models.page_compound import PageCompound

class TestPageCompound(unittest.TestCase):
    """PageCompound unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> PageCompound:
        """Test PageCompound
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `PageCompound`
        """
        model = PageCompound()
        if include_optional:
            return PageCompound(
                total_pages = 56,
                total_elements = 56,
                size = 56,
                content = [
                    PySirius.models.compound.Compound(
                        compound_id = '', 
                        name = '', 
                        rt_start_seconds = 1.337, 
                        rt_end_seconds = 1.337, 
                        neutral_mass = 1.337, 
                        features = [
                            PySirius.models.aligned_feature.AlignedFeature(
                                aligned_feature_id = '', 
                                name = '', 
                                index = 56, 
                                ion_mass = 1.337, 
                                adduct = '', 
                                rt_start_seconds = 1.337, 
                                rt_end_seconds = 1.337, 
                                ms_data = PySirius.models.ms_data.MsData(
                                    merged_ms1 = PySirius.models.basic_spectrum.BasicSpectrum(
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
                                    merged_ms2 = PySirius.models.basic_spectrum.BasicSpectrum(
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
                                    ms1_spectra = [
                                        
                                        ], 
                                    ms2_spectra = [
                                        
                                        ], ), 
                                top_annotations = PySirius.models.feature_annotations.FeatureAnnotations(
                                    formula_annotation = PySirius.models.formula_candidate.FormulaCandidate(
                                        formula_id = '', 
                                        molecular_formula = '', 
                                        adduct = '', 
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
                                        top_csi_score = 1.337, 
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
                                            isotope_pattern = , 
                                            simulated_pattern = , ), 
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
                                                
                                                ], ), ), 
                                    structure_annotation = PySirius.models.structure_candidate_scored.StructureCandidateScored(
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
                                                similarity = 1.337, 
                                                shared_peaks = 56, 
                                                query_spectrum_index = 56, 
                                                db_name = '', 
                                                db_id = '', 
                                                uuid = '', 
                                                splash = '', 
                                                molecular_formula = '', 
                                                adduct = '', 
                                                exact_mass = '', 
                                                smiles = '', 
                                                candidate_in_chi_key = '', 
                                                reference_spectrum = , )
                                            ], 
                                        csi_score = 1.337, 
                                        tanimoto_similarity = 1.337, 
                                        confidence_exact_match = 1.337, 
                                        confidence_approx_match = 1.337, 
                                        fingerprint = PySirius.models.binary_fingerprint.BinaryFingerprint(
                                            bits_set = [
                                                56
                                                ], 
                                            length = 56, ), ), 
                                    compound_class_annotation = PySirius.models.compound_classes.CompoundClasses(), ), 
                                top_annotations_de_novo = PySirius.models.feature_annotations.FeatureAnnotations(), 
                                computing = True, )
                            ], 
                        consensus_annotations = PySirius.models.consensus_annotations_csi.ConsensusAnnotationsCSI(
                            molecular_formula = '', 
                            supporting_feature_ids = [
                                ''
                                ], 
                            selection_criterion = 'MAJORITY_STRUCTURE', 
                            csi_finger_id_structure = PySirius.models.structure_candidate.StructureCandidate(
                                inchi_key = '', 
                                smiles = '', 
                                structure_name = '', 
                                xlog_p = 1.337, ), 
                            confidence_exact_match = 1.337, 
                            confidence_approx_match = 1.337, ), 
                        consensus_annotations_de_novo = PySirius.models.consensus_annotations_de_novo.ConsensusAnnotationsDeNovo(
                            molecular_formula = '', ), 
                        custom_annotations = PySirius.models.consensus_annotations_csi.ConsensusAnnotationsCSI(
                            molecular_formula = '', 
                            confidence_exact_match = 1.337, 
                            confidence_approx_match = 1.337, ), )
                    ],
                number = 56,
                sort = PySirius.models.sort_object.SortObject(
                    empty = True, 
                    sorted = True, 
                    unsorted = True, ),
                first = True,
                last = True,
                number_of_elements = 56,
                pageable = PySirius.models.pageable_object.PageableObject(
                    offset = 56, 
                    sort = PySirius.models.sort_object.SortObject(
                        empty = True, 
                        sorted = True, 
                        unsorted = True, ), 
                    page_size = 56, 
                    page_number = 56, 
                    paged = True, 
                    unpaged = True, ),
                empty = True
            )
        else:
            return PageCompound(
        )
        """

    def testPageCompound(self):
        """Test PageCompound"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
