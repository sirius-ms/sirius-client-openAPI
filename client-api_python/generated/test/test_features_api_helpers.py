# coding: utf-8

import threading
import time
import unittest

from PySirius import (
    AlignedFeature,
    AlignedFeatureOptField,
    BinaryFingerprint,
    DataQuality,
    FeatureAnnotations,
    FeaturesApi,
    FormulaCandidate,
    FormulaCandidateOptField,
    FragmentationTree,
    MsData,
    PagedModelFormulaCandidate,
    StructureCandidateFormula,
    StructureCandidateOptField,
    StructureCandidateScored,
)


class DictModel:
    def __init__(self, data):
        self.data = data

    def to_dict(self):
        return self.data


class FakeFeaturesApi(FeaturesApi):
    def __init__(self):
        self.formula_candidate_calls = []
        self.formula_candidates_paged_calls = []
        self.quant_table_row_calls = []
        self.quant_table_calls = []
        self.active_formula_candidate_requests = 0
        self.max_active_formula_candidate_requests = 0
        self.formula_candidate_lock = threading.Lock()

    def get_aligned_features(self, project_id, ms_data_search_prepared=None, opt_fields=None, **kwargs):
        self.aligned_call = {
            "project_id": project_id,
            "ms_data_search_prepared": ms_data_search_prepared,
            "opt_fields": opt_fields,
            "kwargs": kwargs,
        }
        return [
            AlignedFeature(
                alignedFeatureId="feature-1",
                charge=1,
                detectedAdducts=["[M+H]+"],
                hasMsMs=True,
                topAnnotations=FeatureAnnotations(
                    formulaAnnotation=FormulaCandidate(formulaId="C6H12O6", rank=1),
                ),
            ),
            AlignedFeature(alignedFeatureId="feature-2", charge=1, detectedAdducts=["[M+H]+"], hasMsMs=False),
            AlignedFeature(charge=1, detectedAdducts=["[M+H]+"], hasMsMs=True),
            AlignedFeature(alignedFeatureId="feature-4", charge=1, detectedAdducts=["[M+H]+"], hasMsMs=True),
        ]

    def get_formula_candidate(self, project_id, aligned_feature_id, formula_id, ms_data_search_prepared=None, opt_fields=None, **kwargs):
        self.formula_candidate_calls.append({
            "project_id": project_id,
            "aligned_feature_id": aligned_feature_id,
            "formula_id": formula_id,
            "ms_data_search_prepared": ms_data_search_prepared,
            "opt_fields": opt_fields,
            "kwargs": kwargs,
        })
        return FormulaCandidate(formulaId=formula_id, rank=1, siriusScore=42.0)

    def get_formula_candidates_paged(self, project_id, aligned_feature_id, page=None, size=None, sort=None, ms_data_search_prepared=None, opt_fields=None, **kwargs):
        with self.formula_candidate_lock:
            self.active_formula_candidate_requests += 1
            self.max_active_formula_candidate_requests = max(
                self.max_active_formula_candidate_requests,
                self.active_formula_candidate_requests,
            )
        try:
            time.sleep(0.01)
            self.formula_candidates_paged_calls.append({
                "project_id": project_id,
                "aligned_feature_id": aligned_feature_id,
                "page": page,
                "size": size,
                "sort": sort,
                "ms_data_search_prepared": ms_data_search_prepared,
                "opt_fields": opt_fields,
                "kwargs": kwargs,
            })
            return PagedModelFormulaCandidate(
                content=[FormulaCandidate(formulaId="C7H14O7", rank=1, siriusScore=7.0)]
            )
        finally:
            with self.formula_candidate_lock:
                self.active_formula_candidate_requests -= 1

    def get_fingerprint_prediction(self, project_id, aligned_feature_id, formula_id, **kwargs):
        self.fingerprint_prediction_call = {
            "project_id": project_id,
            "aligned_feature_id": aligned_feature_id,
            "formula_id": formula_id,
            "kwargs": kwargs,
        }
        return [0.9, 0.2, 0.8]

    def get_structure_candidates_by_formula(self, project_id, aligned_feature_id, formula_id, opt_fields=None, **kwargs):
        self.structure_candidates_by_formula_call = {
            "project_id": project_id,
            "aligned_feature_id": aligned_feature_id,
            "formula_id": formula_id,
            "opt_fields": opt_fields,
            "kwargs": kwargs,
        }
        return [
            StructureCandidateScored(
                inchiKey="IK1",
                smiles="CCO",
                structureName="ethanol",
                csiScore=12.5,
                tanimotoSimilarity=0.75,
                fingerprint=BinaryFingerprint(bitsSet=[0, 2]),
            )
        ]

    def get_structure_candidates(self, project_id, aligned_feature_id, opt_fields=None, **kwargs):
        self.structure_candidates_call = {
            "project_id": project_id,
            "aligned_feature_id": aligned_feature_id,
            "opt_fields": opt_fields,
            "kwargs": kwargs,
        }
        return [
            StructureCandidateFormula(
                inchiKey="IK1",
                smiles="CCO",
                mcesDistToTopHit=0.0,
                fingerprint=BinaryFingerprint(bitsSet=[0, 2]),
            ),
            StructureCandidateFormula(
                inchiKey="IK2",
                smiles="CCC",
                mcesDistToTopHit=1.0,
                fingerprint=BinaryFingerprint(bitsSet=[0]),
            ),
            StructureCandidateFormula(
                inchiKey="IK3",
                smiles="CCCC",
                mcesDistToTopHit=float("inf"),
                fingerprint=BinaryFingerprint(bitsSet=[1]),
            ),
        ]

    def get_structure_annotated_spectrum_experimental(self, project_id, aligned_feature_id, formula_id, inchi_key, **kwargs):
        self.structure_annotated_spectrum_call = {
            "project_id": project_id,
            "aligned_feature_id": aligned_feature_id,
            "formula_id": formula_id,
            "inchi_key": inchi_key,
            "kwargs": kwargs,
        }
        return DictModel({
            "cosineQuery": False,
            "peaks": [
                {"mz": 100.0, "intensity": 8.0, "peakAnnotation": {"substructureAtoms": [1]}},
                {"mz": 110.0, "intensity": 2.0, "peakAnnotation": {"fragmentId": 1}},
                {"mz": 120.0, "intensity": 5.0},
            ],
        })

    def get_quant_table_row_experimental(self, project_id, aligned_feature_id, quantification_type="APEX_INTENSITY", **kwargs):
        self.quant_table_row_calls.append({
            "project_id": project_id,
            "aligned_feature_id": aligned_feature_id,
            "quantification_type": quantification_type,
            "kwargs": kwargs,
        })
        return {
            "quantificationMeasure": quantification_type,
            "rowType": "FEATURES",
            "rowIds": [1],
            "columnIds": [11, 12],
            "rowNames": [aligned_feature_id],
            "columnNames": ["sample-a", "sample-b"],
            "values": [[10.0, 20.5]],
        }

    def get_quant_table_experimental(self, project_id, quantification_type="APEX_INTENSITY", **kwargs):
        self.quant_table_calls.append({
            "project_id": project_id,
            "quantification_type": quantification_type,
            "kwargs": kwargs,
        })
        return {
            "quantificationMeasure": quantification_type,
            "rowType": "FEATURES",
            "rowIds": ["feature-1", "feature-2", "feature-4"],
            "columnIds": [11, 12],
            "rowNames": ["feature-1", "feature-2", "feature-4"],
            "columnNames": ["sample-a", "sample-b"],
            "values": [
                [10.0, 20.5],
                [30.0, 40.5],
                [50.0, 60.5],
            ],
        }


class TestFeaturesApiHelpers(unittest.TestCase):
    def test_get_aligned_features_with_top_tree_and_metadata_attaches_formula_and_quant_values(self) -> None:
        api = FakeFeaturesApi()

        features = api.get_aligned_features_with_top_tree_and_metadata(
            "project-1",
            ms_data_search_prepared=True,
            opt_fields=["tags"],
            top_tree_max_workers=2,
        )

        self.assertEqual("project-1", api.aligned_call["project_id"])
        self.assertEqual([
            "tags",
            AlignedFeatureOptField.QUALITIES,
        ], api.aligned_call["opt_fields"])
        self.assertEqual([], api.formula_candidate_calls)
        self.assertCountEqual([
            {
                "project_id": "project-1",
                "aligned_feature_id": "feature-1",
                "ms_data_search_prepared": True,
                "page": 0,
                "size": 1,
                "sort": None,
                "opt_fields": [
                    FormulaCandidateOptField.STATISTICS,
                    FormulaCandidateOptField.FRAGMENTATIONTREE,
                ],
                "kwargs": {
                    "_request_timeout": None,
                    "_request_auth": None,
                    "_content_type": None,
                    "_headers": None,
                    "_host_index": 0,
                },
            },
            {
                "project_id": "project-1",
                "aligned_feature_id": "feature-4",
                "page": 0,
                "size": 1,
                "sort": None,
                "ms_data_search_prepared": True,
                "opt_fields": [
                    FormulaCandidateOptField.STATISTICS,
                    FormulaCandidateOptField.FRAGMENTATIONTREE,
                ],
                "kwargs": {
                    "_request_timeout": None,
                    "_request_auth": None,
                    "_content_type": None,
                    "_headers": None,
                    "_host_index": 0,
                },
            },
        ], api.formula_candidates_paged_calls)
        self.assertGreater(api.max_active_formula_candidate_requests, 1)
        self.assertEqual([], api.quant_table_row_calls)
        self.assertEqual([
            {
                "project_id": "project-1",
                "quantification_type": "APEX_INTENSITY",
                "kwargs": {
                    "_request_timeout": None,
                    "_request_auth": None,
                    "_content_type": None,
                    "_headers": None,
                    "_host_index": 0,
                },
            },
        ], api.quant_table_calls)
        self.assertEqual("C7H14O7", features[0].top_formula_candidate.formula_id)
        self.assertEqual(7.0, features[0].top_formula_candidate.sirius_score)
        self.assertEqual(["sample-a", "sample-b"], features[0].column_names)
        self.assertEqual([10.0, 20.5], features[0].column_intetensity_value)
        self.assertEqual({
            "sample-a": 10.0,
            "sample-b": 20.5,
        }, dict(zip(features[0].column_names, features[0].column_intetensity_value)))
        self.assertIsNone(features[1].top_formula_candidate)
        self.assertEqual(["sample-a", "sample-b"], features[1].column_names)
        self.assertEqual([30.0, 40.5], features[1].column_intetensity_value)
        self.assertIsNone(features[2].top_formula_candidate)
        self.assertIsNone(features[2].column_names)
        self.assertIsNone(features[2].column_intetensity_value)
        self.assertEqual("C7H14O7", features[3].top_formula_candidate.formula_id)
        self.assertEqual(["sample-a", "sample-b"], features[3].column_names)
        self.assertEqual([50.0, 60.5], features[3].column_intetensity_value)

    def test_get_aligned_features_with_top_annotation_and_metadata_returns_combined_records(self) -> None:
        api = FakeFeaturesApi()

        def get_aligned_features(project_id, ms_data_search_prepared=None, opt_fields=None, **kwargs):
            api.aligned_call = {
                "project_id": project_id,
                "ms_data_search_prepared": ms_data_search_prepared,
                "opt_fields": opt_fields,
                "kwargs": kwargs,
            }
            return [
                AlignedFeature(
                    alignedFeatureId="feature-1",
                    ionMass=123.4,
                    charge=1,
                    detectedAdducts=["[M+H]+"],
                    rtStartSeconds=1.0,
                    rtEndSeconds=2.0,
                    rtApexSeconds=1.5,
                    quality=DataQuality.GOOD,
                    hasMsMs=True,
                    qualities={
                        "ISOTOPE_QUALITY": DataQuality.GOOD,
                        "PEAK_QUALITY": DataQuality.DECENT,
                        "MS2_QUALITY": DataQuality.BAD,
                    },
                    msData=MsData.from_dict({
                        "mergedMs1": {
                            "cosineQuery": False,
                            "peaks": [{"mz": 99.0, "intensity": 10.0}],
                        },
                        "mergedMs2": {
                            "cosineQuery": False,
                            "instrument": "qtof",
                            "peaks": [{"mz": 100.0, "intensity": 20.0}],
                        },
                    }),
                    topAnnotations=FeatureAnnotations(
                        confidenceApproxMatch=0.8,
                        formulaAnnotation=FormulaCandidate(
                            formulaId="formula-1",
                            molecularFormula="C2H6O",
                            adduct="[M+H]+",
                        ),
                        structureAnnotation=StructureCandidateScored(
                            inchiKey="IK1",
                            smiles="CCO",
                            structureName="ethanol",
                            csiScore=12.5,
                            tanimotoSimilarity=0.75,
                        ),
                    ),
                ),
                AlignedFeature(
                    alignedFeatureId="feature-2",
                    charge=1,
                    detectedAdducts=["[M+H]+"],
                    hasMsMs=False,
                ),
            ]

        api.get_aligned_features = get_aligned_features

        def get_formula_candidate(project_id, aligned_feature_id, formula_id, ms_data_search_prepared=None, opt_fields=None, **kwargs):
            api.formula_candidate_calls.append({
                "project_id": project_id,
                "aligned_feature_id": aligned_feature_id,
                "formula_id": formula_id,
                "ms_data_search_prepared": ms_data_search_prepared,
                "opt_fields": opt_fields,
                "kwargs": kwargs,
            })
            return FormulaCandidate(
                formulaId=formula_id,
                molecularFormula="C2H6O",
                adduct="[M+H]+",
                numOfExplainedPeaks=4,
                numOfExplainablePeaks=5,
                totalExplainedIntensity=0.9,
                fragmentationTree=FragmentationTree.from_dict({"fragments": [], "losses": []}),
            )

        api.get_formula_candidate = get_formula_candidate

        records = api.get_aligned_features_with_top_annotation_and_metadata(
            "project-1",
            project_path="/tmp/project-1.sirius",
            ms_data_search_prepared=True,
            opt_fields=["tags"],
            top_annotation_max_workers=1,
        )

        self.assertEqual([
            "tags",
            AlignedFeatureOptField.MSDATA,
            AlignedFeatureOptField.TOPANNOTATIONS,
            AlignedFeatureOptField.QUALITIES,
        ], api.aligned_call["opt_fields"])
        self.assertEqual(["project-1_feature-1"], list(records))
        record = records["project-1_feature-1"]
        self.assertEqual("GOOD", record["IsotopeQuality"])
        self.assertEqual("DECENT", record["PeakQuality"])
        self.assertEqual("BAD", record["MS2Quality"])
        self.assertEqual(4, record["NumOfExplainedPeaks"])
        self.assertEqual(5, record["NumOfExplainablePeaks"])
        self.assertEqual(0.9, record["TotalExplainedIntensity"])
        self.assertEqual("/tmp/project-1.sirius", record[">source"])
        self.assertEqual("ethanol", record[">compound"])
        self.assertEqual("C2H6O", record[">formula"])
        self.assertEqual("CCO", record[">smiles"])
        self.assertEqual("qtof", record[">instrumentation"])
        self.assertEqual([{"mz": 99.0, "intensity": 10.0}], record[">ms1peaks"])
        self.assertEqual([{"mz": 100.0, "intensity": 20.0}], record[">ms2peaks"])
        self.assertEqual({"sample-a": {"AbsoluteEicIntensity": 10.0, "RelativeEicIntensity": 0.4878048780487805}, "sample-b": {"AbsoluteEicIntensity": 20.5, "RelativeEicIntensity": 1.0}}, record["Sources"]["SourceFiles"])
        self.assertEqual(0.8, record["confidence"])
        self.assertEqual(1.0, record["f1"])
        self.assertEqual(0.8, record["epimetheus_intensity"])
        self.assertEqual(0, record["missmatches"])
        self.assertEqual(0.0, record["missmatches_frac"])
        self.assertEqual(["CCO", "CCC"], record["smiles_candidates"])
        self.assertEqual("IK1", record["best_inchi"])
        self.assertEqual([0, 2], record["predicted_fp"])
        self.assertEqual("feature-1", record["feature_id"])
        self.assertEqual("formula-1", record["best_formula_id"])
        self.assertEqual(3, record["formula_structure_candidates"])
        self.assertEqual([2], record["to_mask"])
        self.assertEqual([0, 2], record["topFingerprint"])
        self.assertEqual(12.5, record["topStructureCsiScore"])
        self.assertEqual(0.75, record["topStructureTanimoto"])
        self.assertTrue(record["annotated"])
        self.assertEqual(["[M+H]+"], record["detectedAdducts"])
        self.assertEqual([FormulaCandidateOptField.STATISTICS, FormulaCandidateOptField.FRAGMENTATIONTREE], api.formula_candidate_calls[0]["opt_fields"])
        self.assertEqual([StructureCandidateOptField.FINGERPRINT], api.structure_candidates_by_formula_call["opt_fields"])
        self.assertEqual([StructureCandidateOptField.FINGERPRINT], api.structure_candidates_call["opt_fields"])
        self.assertEqual("IK1", api.structure_annotated_spectrum_call["inchi_key"])


if __name__ == "__main__":
    unittest.main()
