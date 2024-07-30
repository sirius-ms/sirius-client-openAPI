# load Rsirius
library(Rsirius)

# create your SiriusSDK instance; keep this
sdk <- SiriusSDK$new()

# start SIRIUS and get your API client instance
# note: sdk class parameters will change and save the port, process ID and more
api_client <- sdk$start(sirius_path="/your/path/to/sirius", port=8080)

# create an API instance using your client
api_instance <- rsirius_api$new(api_client)

# login (if needed)
account_credentials <- AccountCredentials$new("USERNAME", "PASSWORD")
api_instance$login_and_account_api$Login(accept_terms=TRUE, account_credentials)

# open a project space
project_id <- "my_project_id"
api_instance$projects_api$CreateProjectSpace(project_id, "my/project/path")

# import preprocessed (.mgf file) data
my_compound <- "path/to/compound.mgf"
api_instance$projects_api$ImportPreprocessedData(project_id, input_files=my_compound)

# get ID of imported feature
aligned_feature_id <- api_instance$features_api$GetAlignedFeatures(project_id)[[1]]$alignedFeatureId

# build job submission for SIRIUS formula generation (in this example, from ground up)
alignedFeatureIds <- c(aligned_feature_id)
profile <- Instrument$new("QTOF")
formulaIdParams <- Sirius$new(enabled = TRUE, profile = profile)
job_submission <- JobSubmission$new(alignedFeatureIds = alignedFeatureIds, formulaIdParams = formulaIdParams)

# start job for calculation
job <- api_instance$jobs_api$StartJob(project_id, job_submission)

# use job$id to get updates on the job; will say "DONE" when succeeded
while (api_instance$jobs_api$GetJob(project_id, job$id)$progress$state == "RUNNING") {
    Sys.sleep(1)
}

# reap your rewards
formula_candidates <- api_instance$features_api$GetFormulaCandidates(project_id, aligned_feature_id)

print(formula_candidates[[1]])
# result of laudanosine.mgf example file
# {
#     "formulaId": "598888667212985823",
#     "molecularFormula": "C21H27NO4",
#     "adduct": "[M + H]+",
#     "rank": 1.000000,
#     "siriusScore": 23.762199,
#     "isotopeScore": 6.088375,
#     "treeScore": 17.673823
# }

# close project space
api_instance$projects_api$CloseProjectSpace(project_id)

# shutdown sirius; here is why you should keep your SiriusSDK instance
sdk$shutdown()
