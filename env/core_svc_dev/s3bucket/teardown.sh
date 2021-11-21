#!/bin/sh

echo "delete stack..."
aws cloudformation delete-stack \
--stack-name s3