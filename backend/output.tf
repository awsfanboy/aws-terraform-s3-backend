# Following attributes are exported

output "dynamodb_table_name" {
    description = "name of the dynamodb table"
    value = aws_dynamodb_table.terraform-lock.name
}

output "dynamodb_table_arn" {
    description = "arn of the dynamodb table"
    value = aws_dynamodb_table.terraform-lock.arn
}

output "s3_bucket_name" {
    description = "name of the s3 bucket"
    value = aws_s3_bucket.backend-bucket.bucket
}