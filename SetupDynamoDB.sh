#!/bin/bash

wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz -O Dynamodb.tar.gz
mkdir DynamoDB
mkdir DynamoDB/DevDB
mkdir DynamoDB/TestDB
mkdir DynamoDB/ProdDB
tar xzvf Dynamodb.tar.gz -C ./DynamoDB/
rm Dynamodb.tar.gz
