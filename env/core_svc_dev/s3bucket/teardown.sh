#!/bin/sh

.  ../env.sh

echo "delete stack..."
aws cloudformation delete-stack --stack-name ${Stackname}