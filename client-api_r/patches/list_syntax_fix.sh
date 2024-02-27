#!/bin/bash

# Specify the folder path
folder_path="$PWD/../generated/R"

# Change directory to the specified folder
cd "$folder_path" || exit

# Iterate over every file in the folder
for file in *; do
    # Check if file
    if [ -f "$file" ]; then
        # Use sed to replace "= []" with "= list()"
        sed -i 's/= \[\]/= list()/g' "$file"

        # Use sed to replace "= ["something"]" with "= list("something")"
        sed -i 's/= \["\([^"]*\)"\]/= list("\1")/g' "$file"

        # Use sed to replace "= ["something","something"]" with "= list("something", "something")"
        sed -E -i 's/= \[("[^"]*"(, *"[^"]*")*)\]/= list(\1)/g' "$file"

        echo "Processed file: $file"
    fi
done

echo "Exchanged all occurrences of lists using [...] to list using list(...)"