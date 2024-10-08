# coding: utf-8

"""
    SIRIUS Nightsky API

    REST API that provides the full functionality of SIRIUS and its web services as background service. It is intended as entry-point for scripting languages and software integration SDKs.This API is exposed by SIRIUS 6

    The version of the OpenAPI document: 2.1
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from PySirius.api.features_api import FeaturesApi


class TestFeaturesApi(unittest.TestCase):
    """FeaturesApi unit test stubs"""

    def setUp(self) -> None:
        self.api = FeaturesApi()

    def tearDown(self) -> None:
        pass

    def test_add_aligned_features(self) -> None:
        """Test case for add_aligned_features

        Import (aligned) features into the project.
        """
        pass

    def test_delete_aligned_feature(self) -> None:
        """Test case for delete_aligned_feature

        Delete feature (aligned over runs) with the given identifier from the specified project-space.
        """
        pass

    def test_delete_aligned_features(self) -> None:
        """Test case for delete_aligned_features

        Delete feature (aligned over runs) with the given identifier from the specified project-space.
        """
        pass

    def test_get_aligned_feature(self) -> None:
        """Test case for get_aligned_feature

        Get feature (aligned over runs) with the given identifier from the specified project-space.
        """
        pass

    def test_get_aligned_features(self) -> None:
        """Test case for get_aligned_features

        Get all available features (aligned over runs) in the given project-space.
        """
        pass

    def test_get_aligned_features_paged(self) -> None:
        """Test case for get_aligned_features_paged

        Get all available features (aligned over runs) in the given project-space.
        """
        pass

    def test_get_best_matching_compound_classes(self) -> None:
        """Test case for get_best_matching_compound_classes

        Best matching compound classes,  Set of the highest scoring compound classes (CANOPUS) on each hierarchy level of  the ClassyFire and NPC ontology,
        """
        pass

    def test_get_canopus_prediction(self) -> None:
        """Test case for get_canopus_prediction

        All predicted compound classes (CANOPUS) from ClassyFire and NPC and their probabilities,
        """
        pass

    def test_get_de_novo_structure_candidates(self) -> None:
        """Test case for get_de_novo_structure_candidates

        List of de novo structure candidates (e.g. generated by MsNovelist) ranked by CSI:FingerID score for the given 'alignedFeatureId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint.
        """
        pass

    def test_get_de_novo_structure_candidates_by_formula(self) -> None:
        """Test case for get_de_novo_structure_candidates_by_formula

        List of de novo structure candidates (e.g. generated by MsNovelist) ranked by CSI:FingerID score for the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint.
        """
        pass

    def test_get_de_novo_structure_candidates_by_formula_paged(self) -> None:
        """Test case for get_de_novo_structure_candidates_by_formula_paged

        Page of de novo structure candidates (e.g. generated by MsNovelist) ranked by CSI:FingerID score for the given 'formulaId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint.
        """
        pass

    def test_get_de_novo_structure_candidates_paged(self) -> None:
        """Test case for get_de_novo_structure_candidates_paged

        Page of de novo structure candidates (e.g. generated by MsNovelist) ranked by CSI:FingerID score for the given 'alignedFeatureId' with minimal information.  StructureCandidates can be enriched with molecular fingerprint.
        """
        pass

    def test_get_fingerprint_prediction(self) -> None:
        """Test case for get_fingerprint_prediction

        Returns predicted fingerprint (CSI:FingerID) for the given formula result identifier  This fingerprint is used to perform structure database search and predict compound classes.
        """
        pass

    def test_get_formula_annotated_ms_ms_data(self) -> None:
        """Test case for get_formula_annotated_ms_ms_data

        Returns MS/MS Spectrum (Merged MS/MS and measured MS/MS) which is annotated with fragments and losses  for the given formula result identifier  These annotations are only available if a fragmentation tree and the structure candidate are available.
        """
        pass

    def test_get_formula_annotated_spectrum(self) -> None:
        """Test case for get_formula_annotated_spectrum

        Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
        """
        pass

    def test_get_formula_candidate(self) -> None:
        """Test case for get_formula_candidate

        FormulaResultContainers for the given 'formulaId' with minimal information.
        """
        pass

    def test_get_formula_candidates(self) -> None:
        """Test case for get_formula_candidates

        List of FormulaResultContainers available for this feature with minimal information.
        """
        pass

    def test_get_formula_candidates_paged(self) -> None:
        """Test case for get_formula_candidates_paged

        Page of FormulaResultContainers available for this feature with minimal information.
        """
        pass

    def test_get_frag_tree(self) -> None:
        """Test case for get_frag_tree

        Returns fragmentation tree (SIRIUS) for the given formula result identifier  This tree is used to rank formula candidates (treeScore).
        """
        pass

    def test_get_isotope_pattern_annotation(self) -> None:
        """Test case for get_isotope_pattern_annotation

        Returns Isotope pattern information (simulated isotope pattern, measured isotope pattern, isotope pattern highlighting)  for the given formula result identifier.
        """
        pass

    def test_get_lipid_annotation(self) -> None:
        """Test case for get_lipid_annotation

        Returns Lipid annotation (ElGordo) for the given formula result identifier.
        """
        pass

    def test_get_ms_data(self) -> None:
        """Test case for get_ms_data

        Mass Spec data (input data) for the given 'alignedFeatureId' .
        """
        pass

    def test_get_quantification(self) -> None:
        """Test case for get_quantification

        Returns a single quantification table row for the given feature.
        """
        pass

    def test_get_spectral_library_match(self) -> None:
        """Test case for get_spectral_library_match

        List of spectral library matches for the given 'alignedFeatureId'.
        """
        pass

    def test_get_spectral_library_matches(self) -> None:
        """Test case for get_spectral_library_matches

        List of spectral library matches for the given 'alignedFeatureId'.
        """
        pass

    def test_get_spectral_library_matches_paged(self) -> None:
        """Test case for get_spectral_library_matches_paged

        Page of spectral library matches for the given 'alignedFeatureId'.
        """
        pass

    def test_get_spectral_library_matches_summary(self) -> None:
        """Test case for get_spectral_library_matches_summary

        Summarize matched reference spectra for the given 'alignedFeatureId'.
        """
        pass

    def test_get_structure_annotated_ms_data(self) -> None:
        """Test case for get_structure_annotated_ms_data

        Returns MS/MS Data (Merged MS/MS and list of measured MS/MS ) which are annotated with fragments and losses  for the given formula result identifier and structure candidate inChIKey.
        """
        pass

    def test_get_structure_annotated_spectrum(self) -> None:
        """Test case for get_structure_annotated_spectrum

        Returns a fragmentation spectrum (e.g. Merged MS/MS) which is annotated with fragments and losses for the given formula result identifier  These annotations are only available if a fragmentation tree is available.
        """
        pass

    def test_get_structure_candidates(self) -> None:
        """Test case for get_structure_candidates

        List of structure database search candidates ranked by CSI:FingerID score for the given 'alignedFeatureId' with minimal information.
        """
        pass

    def test_get_structure_candidates_by_formula(self) -> None:
        """Test case for get_structure_candidates_by_formula

        List of CSI:FingerID structure database search candidates for the given 'formulaId' with minimal information.
        """
        pass

    def test_get_structure_candidates_by_formula_paged(self) -> None:
        """Test case for get_structure_candidates_by_formula_paged

        Page of CSI:FingerID structure database search candidates for the given 'formulaId' with minimal information.
        """
        pass

    def test_get_structure_candidates_paged(self) -> None:
        """Test case for get_structure_candidates_paged

        Page of structure database search candidates ranked by CSI:FingerID score for the given 'alignedFeatureId' with minimal information.
        """
        pass

    def test_get_traces(self) -> None:
        """Test case for get_traces

        Returns the traces of the given feature.
        """
        pass


if __name__ == '__main__':
    unittest.main()
