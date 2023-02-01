#!/bin/bash

# Check if the input file is given as an argument
if [ $# -eq 0 ]; then
  echo "Error: No input file specified."
  exit 1
fi

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Error: Illegal number of arguments. Please specify the path to the R file."
    exit 1
fi

# Check if the input file exists
if [ ! -f $1 ]; then
  echo "Error: Input file does not exist."
  exit 1
fi

sed -i "s@^\([[:blank:]]*\)self\$api_client\$deserialize(local_var_resp\$response, \"character\", loadNamespace(\"Rsirius\")),@\1self\$api_client\$deserialize(jsonlite::toJSON(local_var_resp\$response), \"character\", loadNamespace(\"Rsirius\")),@" $1
