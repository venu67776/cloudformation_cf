#!/bin/sh

echo "list of  completed stacks stack..."
aws cloudformation list-stacks \
--stack-status-filter CREATE_COMPLETE