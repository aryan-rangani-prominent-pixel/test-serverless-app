resource "aws_s3_object" "lambda_zip" {
    bucket = var.s3_bucket
    key = "lambda/function.zip"
    source = data.archive_file.example.output_path
    etag = filemd5(data.archive_file.example.output_path)
}