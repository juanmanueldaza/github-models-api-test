#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
    set -a  # automatically export all variables
    source .env
    set +a  # turn off automatic export
else
    echo "Error: .env file not found!"
    exit 1
fi

# Use the message from command line argument or default from .env
MESSAGE=${1:-"$DEFAULT_MESSAGE"}

# Clear the response.json file
> response.json

# Make the API call and format the response
curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "X-GitHub-Api-Version: $API_VERSION" \
  -H "Content-Type: application/json" \
  "$API_URL" \
  -d "{\"model\":\"$MODEL\",\"messages\":[{\"role\":\"user\",\"content\":\"$MESSAGE\"}]}" \
  | jq '.' > response.json

echo "Response saved to response.json"
echo "Used message: $MESSAGE"