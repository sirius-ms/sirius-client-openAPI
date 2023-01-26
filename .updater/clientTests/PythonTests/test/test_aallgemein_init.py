from PySirius import PySiriusAPI
import os

#global setup for all tests
address = "http://localhost"
port = 8080
api = PySiriusAPI(address=address, port=port)
credentials = {"username":str(os.getenv('SIRIUS_USER')), "password":str(os.getenv('SIRIUS_PW'))}
api.get_LoginAndAccountApi().login(credentials, True)