#!/bin/bash
awslocal sqs create-queue --queue-name success
awslocal sqs create-queue --queue-name error

awslocal sns create-topic --name notification
awslocal sns subscribe --topic-arn arn:aws:sns:us-east-1:000000000000:notification --protocol sqs --notification-endpoint http://localhost:4576/queue/success

awslocal sns subscribe --topic-arn arn:aws:sns:us-east-1:000000000000:notification --protocol sqs --notification-endpoint http://localhost:4576/queue/success
