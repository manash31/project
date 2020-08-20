data "archive_file" "welcome" {
  type        = "zip"
  source_file = "welcome.py"
  output_path = "outputs/welcome.zip"
}


resource "aws_lambda_function" "test_lambda" {
  filename      = "outputs/welcome.zip"
  function_name = "welcome"
  role          = "aws_iam_role.lambda_role.arn"
  handler       = "welcome.hello"
  timeout = 900

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  #source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "python3.7"

}