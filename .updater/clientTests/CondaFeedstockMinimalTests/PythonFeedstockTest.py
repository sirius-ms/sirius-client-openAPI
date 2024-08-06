from PySirius import *
import os
import json
import time

sdk = SiriusSDK()
api_instance = sdk.start(port=8080)
project_id = project_dir = "test_fragtree"
api_instance.get_ProjectsApi().create_project_space(project_id, project_dir)
my_compound = [os.path.abspath(os.getenv('RECIPE_DIR') + "/Kaempferol.ms")]
api_instance.get_ProjectsApi().import_preprocessed_data(project_id, input_files=my_compound)
aligned_feature_id = api_instance.get_FeaturesApi().get_aligned_features(project_id)[0].aligned_feature_id
sirius_json = {
    "enabled": True,
    "profile": "QTOF"
}
job_submission_json = {
    "alignedFeatureIds": [
        aligned_feature_id
    ],
    "formulaIdParams":
        sirius_json
}
job_submission = JobSubmission.from_json(json.dumps(job_submission_json))
job = api_instance.get_JobsApi().start_job(project_id, job_submission)
while api_instance.get_JobsApi().get_job(project_id, job.id).progress.state == "RUNNING":
    time.sleep(1)
formula_candidates = api_instance.get_FeaturesApi().get_formula_candidates(project_id, aligned_feature_id)
formula_id = formula_candidates[0].formula_id
fragtree = api_instance.get_FeaturesApi().get_frag_tree(project_id, aligned_feature_id, formula_id)
api_instance.get_ProjectsApi().close_project_space(project_id)
os.remove(project_dir)
sdk.shutdown()

if isinstance(fragtree, FragmentationTree):
    with open('test_fragtree.txt', 'w') as f:
        f.write(fragtree.to_str())