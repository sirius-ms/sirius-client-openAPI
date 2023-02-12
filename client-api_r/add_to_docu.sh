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

# add comment to ImportCompoundsFromString, as generating var_body is not really intuitive
sed -i '/var_body <- "body_example" # character | data content in specified format/a\
# tip: use the following line to generate the var_body string from a file "MyFile.ms"\
# var_body <- paste(readLines("MyFile.ms", warn=FALSE), collapse="\\n")' $1
