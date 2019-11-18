# NOTE: This folder "client_api_r" has to be the current working directory to run this script.
# list which contains all names of the R objects of interest:
code_path <- file.path(getwd(),"generated","R")
scripts <- list.files(code_path)
list_classes <- gsub("\\.[rR]","",scripts)

# import these R objects:
scripts_path <- file.path(code_path,scripts)
sapply(X = scripts_path, FUN = source)

# automated construction of the package "Rsirius":
package.skeleton(name = "Rsirius", list = list_classes, path = getwd(), code_files = scripts_path)
