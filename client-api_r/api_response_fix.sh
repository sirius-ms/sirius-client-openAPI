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

# delete lines
sed -i '/^[[:blank:]]*self$content <- content/{n;N;N;N;d}' $1
# replace deleted lines
# allow initialization of type $new("string", api_response_class)
# that is used in the *_api.R classes
sed -i 's@^\([[:blank:]]*\)self$content <- content@\
\1# allow initialization of type $new(\"string\", api_response_class)\
\1# that is used in the *_api.R classes\
\1if (typeof(response) == \"environment\"){\
\1  self$content <- content\
\1  self$response <- response$response\
\1  self$status_code <- response$status_code\
\1  self$status_code_desc <- response$status_code_desc\
\1  self$headers <- response$headers\
\1\
\1# standard initialization\
\1} else {\
\1  self$content <- content\
\1  self$response <- response\
\1  self$status_code <- status_code\
\1  self$status_code_desc <- status_code_desc\
\1  self$headers <- headers\
\1}@' $1
