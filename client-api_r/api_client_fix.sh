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

# Replace the specified line in the input file
# seperate two sed commands by `;` at end of line
# first line: allow empty response body
# second line: allow response being a URL
sed -i "s/^\([[:blank:]]*\)api_response\$response <- resp %>% resp_body_string()/\1if (length(resp\$body) == 0) {\n\1  api_response\$response <- \"empty\"\n\1} else {\n\1  api_response\$response <- resp %>% resp_body_string()\n\1}/; 
s/^\([[:blank:]]*\)resp_obj <- jsonlite::fromJSON(raw_response)/\1if (grepl('^(http|https)://', raw_response)) {\n\1  resp_obj <- raw_response\n\1} else {\n\1  resp_obj <- jsonlite::fromJSON(raw_response)\n\1}/" $1
