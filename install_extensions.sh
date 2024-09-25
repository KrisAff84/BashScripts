#!/bin/bash

# Installs VS Code extensions from .vscode/extensions.json

# Path to the .vscode/extensions.json file
EXTENSIONS_FILE=".vscode/extensions.json"

# Check if the file exists
if [ ! -f "$EXTENSIONS_FILE" ]; then
  echo "No extensions.json file found in .vscode directory."
  exit 1
fi

# Extract the extension IDs from the recommendations array in the JSON file
EXTENSIONS=$(jq -r '.recommendations[]' "$EXTENSIONS_FILE")

if [ -z "$EXTENSIONS" ]; then
  echo "No recommended extensions found."
  exit 1
fi

# Loop through each extension ID and install it using the `code` command
for extension in $EXTENSIONS; do
  echo "Installing $extension..."
  code --install-extension "$extension"
done

echo "All extensions installed."
