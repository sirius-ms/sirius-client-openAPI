#!/bin/bash

# Specify the file path
api_response_file="$PWD/../generated/R/api_response.R"

# Check if file exists
if [ -f "$api_response_file" ]; then
	# Use sed to replace from_encoding = NULL with from_encoding = ""
	sed -i 's/from_encoding = NULL/from_encoding = ""/g' "$api_response_file"
fi

echo "Fixed from_encoding default value in api_response.R"