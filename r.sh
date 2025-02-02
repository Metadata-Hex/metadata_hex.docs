#!/bin/bash

# Set the base directory (default to current directory if not provided)
BASE_DIR="${1:-.}"

# Function to convert a filename to camelCase
to_camel_case() {
    local name="$1"
    local extension=""
    
    # Extract extension if it exists
    if [[ "$name" == *.* ]]; then
        extension=".${name##*.}"
        name="${name%.*}"  # Remove extension from name
    fi

    # Convert to lowercase, replace spaces/underscores/hyphens with spaces, and capitalize words
    name=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr '_- ' ' ' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2)}1' OFS='')

    # Convert first letter to lowercase
    name="$(echo "${name:0:1}" | tr '[:upper:]' '[:lower:]')${name:1}"

    # Return the new filename with the original extension
    echo "$name$extension"
}

# Find all files and rename them
find "$BASE_DIR" -depth -type f | while read file; do
    dir=$(dirname "$file")
    base=$(basename "$file")
    new_name=$(to_camel_case "$base")

    # Rename only if the name is different
    if [[ "$base" != "$new_name" ]]; then
        mv "$file" "$dir/$new_name"
        echo "Renamed: $file -> $dir/$new_name"
    fi
done

echo "Renaming complete."
