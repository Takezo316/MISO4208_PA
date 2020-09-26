import json
import boto3


def lambda_handler(event, context):
    # TODO implement
    # body = json.loads(event['body'])
    
    
    
    # Create SQS client
    sqs = boto3.client('sqs')

    queue_url = 'https://sqs.us-east-1.amazonaws.com/142135781414/SQS_Pruebas'
    
    # Send message to SQS queue
    response = sqs.send_message(
        QueueUrl=queue_url,
        DelaySeconds=10,
        MessageAttributes={
            'Title': {
                'DataType': 'String',
                'StringValue': 'Colas Testing'
            },
            'Author': {
                'DataType': 'String',
                'StringValue': 'Eduard Duarte S'
            }
        },
        MessageBody=(json.dumps(event['body']))
    )

    print(response['MessageId'])
    
    
    
    
    
    
    
    
    
    
    
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
