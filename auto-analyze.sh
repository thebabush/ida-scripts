#!/bin/bash

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run the Python script with uv, passing all arguments
uv run --project "${SCRIPT_DIR}" "${SCRIPT_DIR}/auto-analyze.py" "$@"
