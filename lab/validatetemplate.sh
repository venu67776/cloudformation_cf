#!/bin/sh

DIR="$(cd $(dirname $BASH_SOURCE) && pwd)"

echo "validating stack..."
aws cloudformation validate-template \
--template-body file:///home/ubuntu/cloudformation_cf/lab/new2.yaml 