#!/bin/bash

# Author      : Nagendran Sandraprakasam
# Description : Script to List AMI that is "Owned By Me"

# Load configuration
source config.sh

aws ec2 describe-images --owners self --query 'Images[*].[Name,ImageId,Description,ImageLocation,OwnerId,CreationDate]' --output $sOutputType --region $sRegion --profile $sAWSProfileName > "${sOutputLocation}${sFileName01}"

# Display completion message
echo "Script completed successfully. Output file at ["${sOutputLocation}${sFileName01}"]"

# Exit the script after completing
exit 0