from __future__ import print_function
import time
from PySirius import SiriusAPI









# get config
SiriusAPI.get_ComputationsApi()
print("Config Loaded Successfull!")
print()

# test basic stuff
print("Version:")
print(SiriusAPI.get_VersionInfoControllerApi()) # check for version
print()
print("Project Spaces")
print(SiriusAPI.get_ProjectSpacesApi()) # check for project spaces
print()

print("Testing user specific stuff")
print("Account Info")
#print(api.get_account_info())
print()
print("Subscriptions")
#print(api.get_subscriptions())
print()

# starting test with demo data
print("Starting Test!")
