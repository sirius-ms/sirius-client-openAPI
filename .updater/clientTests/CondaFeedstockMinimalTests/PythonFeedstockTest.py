from PySirius import SiriusSDK, AlignedFeatureOptField, ActuatorApi, Helper
import os

api = SiriusSDK().attach_or_start_sirius(headless=True)

ps_info = api.projects().create_project_space("testProject", os.path.abspath("./testProject.sirius"))
path = os.getenv('RECIPE_DIR') + "/Kaempferol.ms"
path = os.path.abspath(path)
api.projects().import_preprocessed_data(ps_info.project_id, ignore_formulas=True, input_files=[path])

featureId = api.features().get_aligned_features(ps_info.project_id)[0].aligned_feature_id

jobSub = api.jobs().get_default_job_config()
jobSub.spectra_search_params.enabled = False
jobSub.formula_id_params.enabled = True
jobSub.fingerprint_prediction_params.enabled = False
jobSub.structure_db_search_params.enabled = False
jobSub.canopus_params.enabled = False
jobSub.ms_novelist_params.enabled = False

job = api.jobs().start_job(project_id=ps_info.project_id, job_submission=jobSub)
Helper.wait_for_job_completion(ps_info.project_id, job.id, api.jobs())

formula_id = api.features().get_aligned_feature(ps_info.project_id, featureId, [AlignedFeatureOptField.TOPANNOTATIONS]
                                                ).top_annotations.formula_annotation.formula_id
tree = api.features().get_frag_tree(ps_info.project_id, featureId, formula_id)
print(tree.to_json())

SiriusSDK().shutdown_sirius()

with open('test_fragtree.json', 'w') as f:
    f.write(tree.to_json())