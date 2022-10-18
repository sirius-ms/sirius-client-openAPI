from __future__ import print_function
import time
import PySirius


#### credentials for the login ####
name = ""
pw = ""








# get config
api = PySirius.ComputationsApi()
config = api.get_default_job_config()
print("Config Loaded Successfull!")
print()

# test basic stuff
print("Testing general stuff...")
api = PySirius.VersionInfoControllerApi()
print("Version:")
print(api.get_version_info()) # check for version
print()
api = PySirius.ProjectSpacesApi()
print("Project Spaces")
print(api.get_project_spaces()) # check for project spaces
print()

## TODO -- Logins ##
# check if user is logged in
#api = PySirius.LoginAndAccountApi()
#if(api.is_logged_in()):
#	pass
#else:
#	if((name == "") & (pw == "")):	
#		print("Please Create an account in via the following link and add the credentials to this file")
#		print(api.get_sign_up_url())
#		exit(0)
#			
#	else:
#		body = PySirius.AccountCredentials(username=name, password=pw)
#		print("Logging in...")
#		api.login(body, True)
#print()

# user is logged in
print("Testing user specific stuff")
print("Account Info")
print(api.get_account_info())
print()
print("Subscriptions")
print(api.get_subscriptions())
print()

# starting test with demo data
print("Starting Test!")
