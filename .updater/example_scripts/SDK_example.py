# load PySirius and other libraries
from PySirius import *
import json
import time

# create your SiriusSDK instance; keep this
sdk = SiriusSDK()

# start SIRIUS and get your API instance
# note: sdk class parameters will change and save the port, process ID and more
api_instance = sdk.start(sirius_path="/your/path/to/sirius", port=8080)

# login (if needed)
account_credentials = AccountCredentials(username="USERNAME", password="PASSWORD")
api_instance.get_LoginAndAccountApi().login(accept_terms=True, account_credentials=account_credentials)

# open a project space
project_id = "my_project_id"
api_instance.get_ProjectsApi().create_project_space(project_id, "my/project/path")

# import preprocessed (.mgf file) data
my_compound = ["path/to/compound.mgf"]
api_instance.get_ProjectsApi().import_preprocessed_data(project_id, input_files=my_compound)

# get ID of imported feature
aligned_feature_id = api_instance.get_FeaturesApi().get_aligned_features(project_id)[0].aligned_feature_id

# build job submission for SIRIUS formula generation (in this example, from ground up)
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

# start job for calculation
job = api_instance.get_JobsApi().start_job(project_id, job_submission)

# use job$id to get updates on the job; will say "DONE" when succeeded
while api_instance.get_JobsApi().get_job(project_id, job.id).progress.state == "RUNNING":
    time.sleep(1)

# reap your rewards
formula_candidates = api_instance.get_FeaturesApi().get_formula_candidates(project_id, aligned_feature_id)

print(formula_candidates[0].to_str())
# result of laudanosine.mgf example file
# {'adduct': '[M + H]+',
#  'annotatedSpectrum': None,
#  'canopusPrediction': None,
#  'compoundClasses': None,
#  'formulaId': '599279362621783910',
#  'fragmentationTree': None,
#  'isotopePatternAnnotation': None,
#  'isotopeScore': 6.088375197269453,
#  'lipidAnnotation': None,
#  'medianMassDeviation': None,
#  'molecularFormula': 'C21H27NO4',
#  'numOfExplainablePeaks': None,
#  'numOfExplainedPeaks': None,
#  'predictedFingerprint': None,
#  'rank': 1,
#  'siriusScore': 23.762198504770673,
#  'totalExplainedIntensity': None,
#  'treeScore': 17.67382330750122,
#  'zodiacScore': None}

# close project space
api_instance.get_ProjectsApi().close_project_space(project_id)

# shutdown sirius; here is why you should keep your SiriusSDK instance
sdk.shutdown()
