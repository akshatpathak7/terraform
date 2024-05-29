provider "aws" {
  region = "us-east-1"  # Specify the desired AWS region
}

resource "aws_s3_bucket" "hello_world_bucket" {
  bucket = "my-hello-world-bucket-123456"  # Use a globally unique bucket name
  acl    = "private"

  tags = {
    Name        = "HelloWorldBucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "hello_world_file" {
  bucket = aws_s3_bucket.hello_world_bucket.bucket
  key    = "hello_world.txt"
  content = "Hello, World!"

  tags = {
    Name        = "HelloWorldFile"
    Environment = "Dev"
  }
}
