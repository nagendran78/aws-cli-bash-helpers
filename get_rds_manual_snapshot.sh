#!/bin/bash

# Author      : Nagendran Sandraprakasam
# Description : Script to List RDS Manual Snapshot

# Load configuration
source config.sh

aws rds describe-db-snapshots --snapshot-type manual --query 'DBSnapshots[*].[DBSnapshotIdentifier,DBInstanceIdentifier,SnapshotCreateTime,Engine,AllocatedStorage,StorageType]' --output $sOutputType --region $sRegion --profile $sAWSProfileName > "${sOutputLocation}${sFileName03}"

# Display completion message
echo "Script completed successfully. Output file at ["${sOutputLocation}${sFileName03}"]"

# Exit the script after completing
exit 0