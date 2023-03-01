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
# note: we use @ as an delimiter as / and | are allready used in the second regex
# allow empty response body
sed -i "s@^\([[:blank:]]*\)api_response\$response <- resp %>% resp_body_string()@\1if (length(resp\$body) == 0) {\n\1  api_response\$response <- \"empty\"\n\1} else {\n\1  api_response\$response <- resp %>% resp_body_string()\n\1}@" $1
# allow response being a URL
sed -i "s@^\([[:blank:]]*\)resp_obj <- jsonlite::fromJSON(raw_response)@\1if (startsWith(raw_response, \"https://auth0.bright-giant.com\")) {\n\1  resp_obj <- raw_response\n\1} else {\n\1  resp_obj <- jsonlite::fromJSON(raw_response)\n\1}@" $1
# fix Structure Candidate deserialization error
# delete lines
sed -i '/^[[:blank:]]*if (c(inner_return_type) \%in\% primitive_types) {/{n;N;N;N;N;N;d}' $1
# replace deleted lines
sed -i 's@^\([[:blank:]]*\)if (c(inner_return_type) \%in\% primitive_types) {@\
\1if (c(inner_return_type) \%in\% primitive_types) {\
\1  if (inner_return_type == "integer" \&\& is.list(obj) \&\& length(obj)>0 \&\& exists("obj"\[\[1\]\])) {\
\1    return_obj <- vector("list", length = length(obj\[\[1\]\]))\
\1    if (length(obj\[\[1\]\]) > 0) {\
\1      for (row in 1:length(obj\[\[1\]\])) {\
\1        return_obj\[\[row\]\] <- self$deserializeObj(obj\[\[1\]\]\[row\], inner_return_type, pkg_env)\
\1      }\
\1    }\
\1  } else {\
\1    return_obj <- vector("list", length = length(obj))\
\1    if (length(obj) > 0) {\
\1      for (row in 1:length(obj)) {\
\1        return_obj\[\[row\]\] <- self$deserializeObj(obj\[row\], inner_return_type, pkg_env)\
\1      }\
\1    }\
\1  }@' $1             
