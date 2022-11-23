from PySirius import RealSirius



path_to_sirius = ".updater/api/sirius/bin/sirius"
path_to_project = ".updater/api/sirius/bin/temp"


api = RealSirius.start(path_to_project, path_to_sirius)


# get config
api.get_ComputationsApi()
print("Config Loaded Successfull!")
print()

# test basic stuff
print("Project Spaces")
print(api.get_ProjectSpacesApi()) # check for project spaces
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
