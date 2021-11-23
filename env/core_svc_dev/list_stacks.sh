#!/bin/sh

echo "list of  completed stacks..."
aws cloudformation list-stacks \
--stack-status-filter CREATE_COMPLETE