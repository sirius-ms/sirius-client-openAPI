import unittest
import os
from PySirius import SiriusSDK, AlignedFeatureOptField, FragmentationTree, FormulaCandidate, JobState, Helper

# a general purpose acceptance test that tests basic packe behaviour and can be used as blueprint for testing packages in CI/CD pipelines
class TestAcceptance(unittest.TestCase):

    def setUp(self) -> None:
        os.environ["RECIPE_DIR"] = f"{os.environ.get('HOME')}/sirius-client-openAPI/.updater/clientTests/Data"
        self.path_to_project = f"{os.environ.get('HOME')}/testProject.sirius"

    def tearDown(self) -> None:
        os.remove(self.path_to_project)

    def test_simple_computation(self):
        path_to_project = self.path_to_project
        # start acceptance test for packages
        api = SiriusSDK().attach_to_sirius(sirius_port=8080)
        ps_info = api.projects().create_project("testProject", os.path.abspath(path_to_project))
        try:
            path = os.getenv('RECIPE_DIR') + "/Kaempferol.ms"
            path = os.path.abspath(path)
            api.projects().import_preprocessed_data(ps_info.project_id, ignore_formulas=True, input_files=[path])

            feature_id = api.features().get_aligned_features(ps_info.project_id)[0].aligned_feature_id

            job_sub = api.jobs().get_default_job_config()
            job_sub.spectra_search_params.enabled = False
            job_sub.formula_id_params.enabled = True
            job_sub.fingerprint_prediction_params.enabled = False
            job_sub.structure_db_search_params.enabled = False
            job_sub.canopus_params.enabled = False
            job_sub.ms_novelist_params.enabled = False

            job = api.jobs().start_job(project_id=ps_info.project_id, job_submission=job_sub)
            Helper.wait_for_job_completion(ps_info, job, api)

            formula_candidate = api.features().get_aligned_feature(ps_info.project_id, feature_id, opt_fields=["topAnnotations"]).top_annotations.formula_annotation
            tree = api.features().get_frag_tree(ps_info.project_id, feature_id, formula_candidate.formula_id)

            self.assertIsInstance(formula_candidate, FormulaCandidate)
            self.assertIsInstance(tree, FragmentationTree)
            self.assertEqual("C15H10O6", formula_candidate.molecular_formula)
        finally:
            api.projects().close_project(ps_info.project_id)


if __name__ == '__main__':
    unittest.main()
