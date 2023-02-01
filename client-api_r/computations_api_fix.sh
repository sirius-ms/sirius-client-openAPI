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

## In: PostJobConfigWithHttpInfo 
# fix deserialization of response coming back as simple string and not as JSON
sed -i "s@^\([[:blank:]]*\)self\$api_client\$deserialize(local_var_resp\$response, \"character\", loadNamespace(\"Rsirius\")),@\1self\$api_client\$deserialize(jsonlite::toJSON(local_var_resp\$response), \"character\", loadNamespace(\"Rsirius\")),@" $1

## In: StartJobFromConfigWithHttpInfo
# fix multi-row if statement
# delete lines
sed -i '/^[[:blank:]]*if (!is.null(`request_body`)) {/{n;N;N;N;d}' $1
#insert new line with fitting indentation
sed -i 's/^\([[:blank:]]*\)if (!is.null(`request_body`)) {/\1if (!is.null(`request_body`)) {\n\1  local_var_body <- jsonlite::toJSON(`request_body`)/' $1
