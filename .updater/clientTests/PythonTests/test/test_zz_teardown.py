from PySirius import PySiriusAPI
import os

#global teardown for all tests
address = "http://localhost"
port = 8080
api = PySiriusAPI(address=address, port=port)
api.get_LoginAndAccountApi().logout()