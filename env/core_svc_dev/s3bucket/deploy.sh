#!/bin/sh
.  ../env.sh

cd ../../../lab 
mydir=`dirname $0`


echo "Creating stack..."
  aws cloudformation create-stack \
  --stack-name ${Stackname} \
  --template-body file://$mydir/s3.yaml \
  --region eu-east-1 /
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=Username,ParameterValue=${Username} \
    	ParameterKey=Bucketname,ParameterValue=${Bucketname} \
      ParameterKey=Password,ParameterValue=${Password}

