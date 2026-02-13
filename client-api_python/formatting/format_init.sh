#!/bin/bash

file="./client-api_python/generated/PySirius/__init__.py"

# Use sed to insert the new items before the closing bracket
sed -i '/^]$/i\    "PySiriusAPI",\n    "SiriusSDK",\n    "Helper",' "$file"

echo "# import manually generated API and SDK files" >> $file
echo "from PySirius.pysirius_api import PySiriusAPI as PySiriusAPI" >> $file
echo "from PySirius.pysirius_sdk import SiriusSDK as SiriusSDK" >> $file
echo "from PySirius.pysirius_helper import Helper as Helper" >> $file