setwd("E:\\Bioinformatik (B.Sc. + M.Sc.)\\HiWi\\sirius-client-openapi\\client_api_r")

# list which contains all names of the R objects of interest:
code_path <- file.path(getwd(),"generated","R")
scripts <- list.files(code_path)
list_classes <- gsub("\\.[rR]","",scripts)

# import these R objects:
scripts_path <- file.path(code_path,scripts)
sapply(X = scripts_path, FUN = source)

# automated construction of the package "R-sirius":
package.skeleton(name = "R-sirius", list = list_classes, path = getwd(), code_files = scripts_path)
