#!/bin/bash

# Author      : Nagendran Sandraprakasam
# Description : Configuration file for the scripts

# AWS CLI Configuration
sOutputType="text"
sRegion="<region>"
sAWSProfileName="<AWS-Profile-Name>"

# Output File Details
sFileAWSAccNamePrefix="Amazon"
sOutputLocation="output/"

## File Name : get_ami_ownedbyme
sFileNamePrefix01="-ami.txt"
sFileName01="${sFileAWSAccNamePrefix}${sFileNamePrefix01}"

## File Name : get_ec2_stopped
sFileNamePrefix02="-ec2-stopped.txt"
sFileName02="${sFileAWSAccNamePrefix}${sFileNamePrefix02}"

## File Name : get_rds_manual_snapshot
sFileNamePrefix03="-rds-snapshot.txt"
sFileName03="${sFileAWSAccNamePrefix}${sFileNamePrefix03}"
