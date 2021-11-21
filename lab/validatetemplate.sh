#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"

echo "validating stack..."
aws cloudformation validate-template \
--template-body file://${DIR}/s3.yaml
