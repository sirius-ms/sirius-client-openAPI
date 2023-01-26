from PySirius import PySiriusAPI
import os

#global teardown for all tests

def main():
    address = "http://localhost"
    port = 8080
    api = PySiriusAPI(address=address, port=port)
    api.get_LoginAndAccountApi().logout()
    
if __name__ == "__main__":
    main()