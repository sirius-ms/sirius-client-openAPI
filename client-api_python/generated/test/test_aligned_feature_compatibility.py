# coding: utf-8

import unittest

from PySirius import AlignedFeature, AlignedFeatureOptField, DataQuality


class TestAlignedFeatureCompatibility(unittest.TestCase):
    def test_aligned_feature_opt_fields_include_server_3_1_values(self) -> None:
        self.assertEqual("indexedTopAnnotations", AlignedFeatureOptField.INDEXEDTOPANNOTATIONS.value)
        self.assertEqual("qualities", AlignedFeatureOptField.QUALITIES.value)

    def test_aligned_feature_deserializes_qualities(self) -> None:
        feature = AlignedFeature.from_dict({
            "charge": 1,
            "detectedAdducts": ["[M+H]+"],
            "qualities": {
                "peak": "GOOD",
                "ms2": None,
            },
        })

        self.assertEqual(DataQuality.GOOD, feature.qualities["peak"])
        self.assertIsNone(feature.qualities["ms2"])
        self.assertEqual({"peak": DataQuality.GOOD, "ms2": None}, feature.to_dict()["qualities"])

    def test_aligned_feature_does_not_serialize_missing_qualities(self) -> None:
        feature = AlignedFeature.from_dict({
            "charge": 1,
            "detectedAdducts": ["[M+H]+"],
        })

        self.assertNotIn("qualities", feature.to_dict())

    def test_aligned_feature_serializes_quant_table_metadata(self) -> None:
        feature = AlignedFeature.from_dict({
            "charge": 1,
            "detectedAdducts": ["[M+H]+"],
            "columnNames": ["sample-a", "sample-b"],
            "columnIntetensityValue": [10.0, 20.5],
        })

        self.assertEqual(["sample-a", "sample-b"], feature.column_names)
        self.assertEqual([10.0, 20.5], feature.column_intetensity_value)
        self.assertEqual(["sample-a", "sample-b"], feature.to_dict()["columnNames"])
        self.assertEqual([10.0, 20.5], feature.to_dict()["columnIntetensityValue"])


if __name__ == "__main__":
    unittest.main()
