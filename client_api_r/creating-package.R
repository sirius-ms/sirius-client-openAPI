# NOTE: This folder "client_api_r" has to be the current working directory to run this script.

###################################################################
### PACKAGE SKELETON - Create the package skeleton of 'Rsirius' ###
###################################################################

# 'list_classes' is a list with all names of the R objects of interest:
code_path <- file.path(getwd(),"generated","R")
scripts <- list.files(code_path)
list_classes <- gsub("\\.[rR]","",scripts)

# import these R objects:
scripts_path <- file.path(code_path,scripts)
sapply(X = scripts_path, FUN = source)

# automated construction of the package skeleton:
package_name <- "Rsirius"
stopifnot(!dir.exists(file.path(getwd(),package_name)))
package.skeleton(name = package_name, list = list_classes, path = getwd(), code_files = scripts_path)

###############################################################
### DOCUMENTATION - Create the .Rd files and NAMESPACE file ###
###############################################################

# Step 1: Delete the NAMESPACE file and the already existing .Rd file skeletons (but not Rsirius-package.Rd)
list_Rds <- paste(list_classes,".Rd", sep = "")
path_of_Rds <- file.path(getwd(),package_name,"man",list_Rds)

files_to_rmv <- c(path_of_Rds,file.path(getwd(),package_name,"NAMESPACE"))

for(idx in 1:length(files_to_rmv)){
    if(file.exists(files_to_rmv[idx])){
        file.remove(files_to_rmv[idx])
    }else{
        print(paste("The file ",files_to_rmv[idx]," does not exist.", sep = ""))
    }
}

# Step 2: Create the .Rd files and the NAMESPACE file using the roxygen2 doc-strings
require(devtools)
document(pkg = file.path(getwd(),package_name))

print("FINISHED CREATING PACKAGE")
print(paste("Note:",
            "You have to edit the Rsirius-package.Rd and DESCRIPTION file by hand. Include 'Imports: ...' to the DESCRIPTION file.",
            "Then you should delete the Read-and-delete-me file.",
            "To make sure that this package can be installed, call 'R CMD check Rsirius' first.", sep = "\n"))

