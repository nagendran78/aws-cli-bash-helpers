#!/bin/bash

# Author      : Nagendran Sandraprakasam
# Description : Script to List EC2 that is in "Stopped" state

# Load configuration
source config.sh

aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped" --query "Reservations[].Instances[].{InstanceName: Tags[?Key=='Name'] | [0].Value, InstanceType: InstanceType, KeyName: KeyName, LaunchTime: LaunchTime, InstanceId: InstanceId, State: State.Name}" --output $sOutputType --region $sRegion --profile $sAWSProfileName > "${sOutputLocation}${sFileName02}"

# Display completion message
echo "Script completed successfully. Output file at ["${sOutputLocation}${sFileName02}"]"

# Exit the script after completing
exit 0
