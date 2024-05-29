output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.hello_world_bucket.bucket
}

output "object_url" {
  description = "The URL of the uploaded object"
  value       = aws_s3_bucket_object.hello_world_file.id
}
