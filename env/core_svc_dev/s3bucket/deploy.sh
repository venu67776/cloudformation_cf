#!/bin/sh
.  ../env.sh

mydir=$(cd ../../../lab && pwd)
echo $mydir


echo "Creating stack..."
  aws cloudformation create-stack \
  --stack-name ${Stackname} \
  --template-body file://$mydir/s3.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameters ParameterKey=Username,ParameterValue=${Username} \
    	ParameterKey=Bucketname,ParameterValue=${Bucketname} \
      ParameterKey=Password,ParameterValue=${Password}

