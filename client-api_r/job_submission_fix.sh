## CURRENTLY NOT USED - MADE OBSOLETE BY TEMPLATE CHANGE

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

# fix serialization of configMap in toJSONString
sed -i "s@^\([[:blank:]]*\)\"\%s\"@\1\%s@" $1
