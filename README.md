# AWS DynamoDB Automation Project

## Overview
This project demonstrates how to interact with AWS DynamoDB from an EC2 instance and automate data insertion using a Bash script.

It builds on a previous EC2 + NGINX project by adding database integration and automation.

---

## Architecture
- EC2 (Amazon Linux)
- DynamoDB table (UserData)
- IAM Role with DynamoDB access
- AWS CLI
- Bash automation script

---

## Features
- Create and manage DynamoDB table
- Insert data using AWS CLI
- Retrieve data using scan operation
- Automate data insertion using Bash script

---

## Steps Performed

### 1. DynamoDB Setup
- Created table with partition key `Id`
  ![DynamoDB Table](screenshots/dynamodb-table.png)

### 2. IAM Configuration
- Attached DynamoDB permissions to EC2 role
  ![IAM Permissions](screenshots/iam-dynamodb.png)
  ![IAM Permissions](screenshots/iam-role-attached.png)

### 3. Data Operations
- Inserted items using AWS CLI
  ![Insert_Item](screenshots/dynamodb-insert.png)
- Retrieved items using scan
  ![Get_Item](screenshots/dynamodb-scan.png)

### 4. Automation
- Created Bash script to automate inserts and run it
  ![Insert_usingscript](screenshots/script-file.png)
  
  ![Run_script](screenshots/script-run.png)

### 5. View the table after inserting the data
- Performed the scan operation on the table
  ![View_table](screenshots/dynamodb-updated.png)
  

---

## Script Example

```bash
#!/bin/bash

aws dynamodb put-item \
  --table-name UserData \
  --item '{
    "Id": {"S": "2"},
    "name": {"S": "AutoUser"}
  }'
