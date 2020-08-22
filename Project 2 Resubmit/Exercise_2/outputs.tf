# TODO: Define the output variable for the lambda function.

data "aws_lambda_invocation" "greet_lambda_invoke" {
 function_name = aws_lambda_function.greet_lambda.function_name

input = <<JSON
{
        
 }
JSON
}


output "result_entry" {
  value = jsondecode(data.aws_lambda_invocation.greet_lambda_invoke.result)
}
