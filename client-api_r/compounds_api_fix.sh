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


# fix simple local_var_body
sed -i 's/^\([[:blank:]]*\)local_var_body <- `body`$toJSONString()/\1local_var_body <- `body`/' $1
#sed -i 's/^\([[:blank:]]*\)local_var_body <- `job_submission`$toJSONString()/\1local_var_body <- jsonlite::toJSON(job_submission)/' $1
#sed -i 's/^\([[:blank:]]*\)local_var_body <- `gui_parameters`$toJSONString()/\1local_var_body <- jsonlite::toJSON(gui_parameters)/' $1
#sed -i 's/^\([[:blank:]]*\)local_var_body <- `account_credentials`$toJSONString()/\1local_var_body <- jsonlite::toJSON(account_credentials)/' $1

## fix multi-row if statement
# delete lines
sed -i '/^[[:blank:]]*if (!is.null(`request_body`)) {/{n;N;N;N;d}' $1
#insert new line with fitting indentation
sed -i 's/^\([[:blank:]]*\)if (!is.null(`request_body`)) {/\1if (!is.null(`request_body`)) {\n\1  local_var_body <- jsonlite::toJSON(`request_body`)/' $1
