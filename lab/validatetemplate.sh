#!/bin/sh

DIR="$(cd $(dirname $BASH_SOURCE) && pwd)"

echo "validating stack..."
aws cloudformation validate-template \
--template-body file://C:/Users/VENUGOPAL/Documents/cloudformation_cf/lab/s3.yaml \