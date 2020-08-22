import os

def lambda_handler(event, context):
    message = "{} from Lambda!" 

    return { 
        'message' : message
    } 
