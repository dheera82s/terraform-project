output "bucket_id" {
  value = aws_s3_bucket.demo.id
  description = "The ID of the created S3 bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.demo.arn
  description = "The ARN of the created S3 bucket"
}