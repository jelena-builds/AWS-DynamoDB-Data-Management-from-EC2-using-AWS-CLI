#!/bin/bash

echo "Inserting data into DynamoDB..."

aws dynamodb put-item \
	--table-name UserData \
	--item '{
	"Id": {"S": "2"},
	"name": {"S": "AutoUser"}
}'

echo "Done."
