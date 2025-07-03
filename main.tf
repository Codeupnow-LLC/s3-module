# Create an S3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name       # Use the value passed from the module input variable

  tags = {
    Name = var.bucket_name       # Tag the bucket with its name
  }
}

# Block all forms of public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "bucket" {
  bucket                  = aws_s3_bucket.bucket.id  # Reference the ID of the bucket created above

  block_public_acls      = true   # Block public access through Access Control Lists (ACLs)
  block_public_policy    = true   # Block public access through bucket policies
  ignore_public_acls     = true   # Ignore any public ACLs that may be set on the objects
  restrict_public_buckets = true  # Prevent the bucket from being made public accidentally
}
