#!/bin/bash

jq -r 'to_entries[] | select(.value.path == "/mnt/path") | .key' input.json