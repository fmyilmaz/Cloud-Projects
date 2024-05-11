import json

def handler(event, context):
    print("Hello from Lambda with container!")
    return{
        'statusCode': 200,
        'body': 'Hello from Lambda with container!'
    }

