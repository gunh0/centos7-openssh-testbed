#!/bin/bash

# Set the path to the script that you want to run
SCRIPT_PATH="./resource_monitoring.sh"

# Set the desired frequency of the script execution
FREQUENCY="1"

# Create a temporary file to hold the current crontab
TEMP_FILE=$(mktemp)

# Backup the current crontab
crontab -l > $TEMP_FILE

# Check if the script is already scheduled
if grep -q "$SCRIPT_PATH" $TEMP_FILE; then
    echo "Script is already scheduled in crontab."
else
    # Add a new cron job for the script
    echo "*/$FREQUENCY * * * * $SCRIPT_PATH" >> $TEMP_FILE
    echo "Script has been scheduled in crontab."
fi

# Install the new crontab
crontab $TEMP_FILE

# Remove the temporary file
rm $TEMP_FILE
