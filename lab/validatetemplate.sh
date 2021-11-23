#!/bin/sh

#DIR="$( cd "$( dirname "$0" )" && pwd )"
mydir=`dirname $0`



echo "validating stack..."
aws cloudformation validate-template --template-body file://$mydir/s3.yaml
