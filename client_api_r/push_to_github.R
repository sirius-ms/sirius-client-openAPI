# This script pushes the package "Rsirius" directly to Github.
# If Rsirius is already built, this package will be copied to the local Github repository of Rsirius.
# These changes will be commited and pushed to the remote repository.

# 0. Request of some parameters:
path_Rsirius_repo <- readline("Please enter the location of your local Rsirius repository: ")
user.email <- readline("Please enter your Github useremail: ")
user.name <- readline("Please enter your Github username: ")

# 1. Check if the package Rsirius is already built.
path_this_repo <- getwd()
path_Rsirius_package <- file.path(getwd(),"build","Rsirius")
if(!dir.exists(path_Rsirius_package)){
  print(paste("The package has not been built yet. Create a the package at location:",path_Rsirius_package, sep = " "))
  source(file = file.path(getwd(),"client_api_r","creating-package.R"))
}

script_files <- list.files(path = file.path(path_Rsirius_package,"R"), all.files = TRUE, full.names = TRUE)
rd_files <- list.files(path = file.path(path_Rsirius_package,"man"), all.files = TRUE, full.names = TRUE)
metadata_files <- list.files(path = path_Rsirius_package, include.dirs = FALSE, all.files = TRUE, full.names = TRUE)

# 2. Change working directory and update this repository.
setwd(path_Rsirius_repo)
print(paste("Changed working directory to:", getwd(), sep = " "))
system(paste("git config --local user.email",user.email,sep = " "), wait = TRUE)
system(paste("git config --local user.name",user.name,sep = " "), wait = TRUE)
system("git pull origin master", wait = TRUE)

# 3. Remove all files contained in the Rsirius directory and its subdirectories
if(dir.exists("Rsirius")){
  old_files <- list.files(path = file.path("Rsirius",c("","R","man")), include.dirs = FALSE, all.files = TRUE, full.names = TRUE)
  file.remove(old_files)
  print("Removed all outdated files contained in Ririus")
}else{
  dir.create(path = file.path("Rsirius","R"), recursive = TRUE, showWarnings = TRUE)
  dir.create(path = file.path("Rsirius","man"), recursive = TRUE, showWarnings = TRUE)
  print(paste("Created the following directory Rsirius with subdirectories Rsirius/R and Rsirius/man"))
}

# 4. Copy all files of the Rsirius pacakge to these directories in this repository.
file.copy(from = script_files, to = file.path("Rsirius","R"))
file.copy(from = rd_files, to = file.path("Rsirius","man"))
file.copy(from = metadata_files, to = "Rsirius")
print("Copied all files to the directory Rsirius in the Rsirius repository.")

# 5. Stage these changes and commit them. Finally, this commit will be pushed to the remote repository on Github.
system("git add Rsirius", wait = TRUE)

commit_msg <- "\"Updated the package Rsirius\""
system(command = paste("git commit -m",commit_msg,sep = " "), wait = TRUE)
system("git push origin master", wait = TRUE)

setwd(path_this_repo)
print("The updated Rsirius package is pushed to Github.")
print("FINISHED")
