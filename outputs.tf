# Output variable to return the S3 bucket ID to the root module
output "bucket_id" {
  value = aws_s3_bucket.bucket.id  # Return the bucket ID of the resource we created
}
