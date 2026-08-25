#!/bin/bash

file="./generated/PySirius/__init__.py"

# Use sed to insert the new items before the closing bracket
sed -i '/^]$/i\    "PySiriusAPI",\n    "SiriusSDK",\n    "Helper",' "$file"

echo "# import manually generated API and SDK files" >> $file
echo "from PySirius.pysirius_api import PySiriusAPI as PySiriusAPI" >> $file
echo "from PySirius.pysirius_sdk import SiriusSDK as SiriusSDK" >> $file
echo "from PySirius.pysirius_helper import Helper as Helper" >> $file

# the deprecated aliases for renamed API methods must be installed after every API class is imported
echo "" >> $file
echo "# install deprecated aliases for API methods renamed by the SIRIUS API" >> $file
echo "from PySirius.pysirius_compat import install_deprecated_aliases as _install_deprecated_aliases" >> $file
echo "_install_deprecated_aliases()" >> $file
