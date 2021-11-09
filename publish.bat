@ECHO OFF

ECHO Sending message

aws sns --endpoint-url http://localhost:4566 publish --topic-arn arn:aws:sns:us-east-1:000000000000:notification --message 'Some message'

PAUSE
