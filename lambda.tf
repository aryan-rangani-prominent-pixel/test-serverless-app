data "archive_file" "example" {
    type = "zip"
    source_dir = "${path.module}/lambda"
    output_path = "${path.module}/lambda/function.zip"
}

resource "aws_lambda_function" "example" {
    function_name = var.function_name
    role = aws_iam_role.example.arn
    handler = var.handler
    source_code_hash = filebase64sha256(data.archive_file.example.output_path)
    s3_bucket = var.s3_bucket
    s3_key = aws_s3_object.lambda_zip.key
    runtime = var.runtime
    environment {
        variables = var.app_environment
    }
    tags = {
        Environment = var.env
        Application = "example"
    }
}