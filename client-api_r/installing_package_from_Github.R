# This R-script represents a simple test if the created package "Rsirius" can be installed
# from the remote repository github.com/boecker-lab/sirius-apis.

# load package "remotes" in order to install packages from remote repositories
require(remotes)

# Installation:
# also possible call: install_github(repo = "boecker-lab/sirius-apis/Rsirius@master",build = TRUE)
install_github(repo = "boecker-lab/sirius-apis", subdir = "Rsirius", ref = "master", build = TRUE)


### Test ###
require(Rsirius)
api_client <- ApiClient$new(basePath = "http://localhost:8080")

comp_ctr <- CompoundControllerApi$new(api_client)
resp<- comp_ctr$get_compound_ids_using_get(pid = "mice_mzml_500d")
cmp_ids <- resp$content
print(cbind(cmp_ids$index,cmp_ids$id,cmp_ids$ionMass, cmp_ids$ionType))




