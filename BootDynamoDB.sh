#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage: $0 Environment"
	exit
fi

case "$1" in
	-Dev)   echo "Booting Dev DB"
		java -Djava.library.path=./DynamoDB/DynamoDBLocal_lib -jar ./DynamoDB/DynamoDBLocal.jar -dbPath ./DynamoDB/DevDB
		;;
	-Test)  echo "Booting Test DB"
		java -Djava.library.path=./DynamoDB/DynamoDBLocal_lib -jar ./DynamoDB/DynamoDBLocal.jar -dbPath ./DynamoDB/TestDB
		;;
	-Prod)  echo "Booting Prod DB"
		java -Djava.library.path=./DynamoDB/DynamoDBLocal_lib -jar ./DynamoDB/DynamoDBLocal.jar -dbPath ./DynamoDB/ProdDB
		;;
	*)      echo "Option Not Recognozed Using Default Dev DB"
		java -Djava.library.path=./DynamoDB/DynamoDBLocal_lib -jar ./DynamoDB/DynamoDBLocal.jar -dbPath ./DynamoDB/DevDB
		;;
esac
