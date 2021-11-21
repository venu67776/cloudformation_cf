#!/bin/sh

# DIR="$(cd $(dirname $BASH_SOURCE) && pwd)"
DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "validating stack..."
aws cloudformation validate-template \
# --template-body file:///home/ubuntu/cloudformation_cf/lab/s3.yaml 
--template-body file://${DIR}/s3.yaml