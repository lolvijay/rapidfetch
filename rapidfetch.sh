#!/bin/bash
# Coded by github.com/vsin9h
# Copy with credits

# Check if curl is installed
if ! command -v curl &> /dev/null
then
    echo "curl is not installed. Please install it before running this script."
    exit 1
fi

# Check if URL and filename are provided as arguments
if [[ $# -eq 2 ]]; then
    URL=$1
    FILENAME=$2
elif [[ $# -eq 1 ]]; then
    URL=$1
    read -p "Enter the filename to save the downloaded file as (press enter to skip): " FILENAME
else
    # Prompt the user for the URL of the file to download
    read -p "Enter the URL of the file to download: " URL

    # Prompt the user for the filename to save the downloaded file as
    read -p "Enter the filename to save the downloaded file as (press enter to skip): " FILENAME
fi

# Set the maximum download speed (in bytes per second)
MAX_SPEED=1000000

# Download the file using curl, with options for resuming interrupted downloads and setting bandwidth limits
curl --remote-name --continue-at - --limit-rate $MAX_SPEED $URL

# Rename the downloaded file to the user-specified filename if a filename is provided
if [ -n "$FILENAME" ]
then
    mv "$(basename $URL)" $FILENAME
    echo "The file has been downloaded and saved as: $FILENAME"
else
    echo "The file has been downloaded and saved as: $(basename $URL)"
fi
