output "tfstate_bucket_name" {
  value       = aws_s3_bucket.tfstate.bucket
  description = "Name of the S3 bucket for Terraform remote state"
}

output "tflock_table_name" {
  value       = aws_dynamodb_table.tflock.name
  description = "Name of the DynamoDB table for Terraform state locking"
}

output "aws_region" {
  value       = var.aws_region
  description = "AWS region used"
}
