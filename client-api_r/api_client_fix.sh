#!/bin/bash

# Check if the input file is given as an argument
if [ $# -eq 0 ]; then
  echo "Error: No input file specified."
  exit 1
fi

# Check if the input file exists
if [ ! -f $1 ]; then
  echo "Error: Input file does not exist."
  exit 1
fi

# Replace the specified line in the input file
sed -i.bak "s/^\([[:blank:]]*\)api_response\$response <- resp %>% resp_body_string()/\1if (length(resp\$body) == 0) {\n\1  api_response\$response <- \"empty\"\n\1} else {\n\1  api_response\$response <- resp %>% resp_body_string()\n\1}/" $1

# Remove the backup file created by sed
rm "$1.bak"
