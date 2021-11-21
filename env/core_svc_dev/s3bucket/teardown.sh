#!/bin/sh

STACK_NAME=$1

echo "delete stack..."
aws cloudformation delete-stack \
--stack-name ${STACK_NAME}