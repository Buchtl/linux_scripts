#!/bin/bash

# search for path
search_val_path="/mnt/path"

# to_entries[]: Converts the JSON object into an array of key-value pairs.
# select(.value.path == "/mnt/path"): Filters the array to select the object where the path is equal to "/mnt/path".
# .key: Retrieves the key of the selected object.
# -r: Outputs the result as raw text, without quotes.

jq -r --arg path "$search_val_path" 'to_entries[] | select(.value.path == $path) | .key' input.json
