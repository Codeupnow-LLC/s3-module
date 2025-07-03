# Input variable for the module to accept a bucket name
variable "bucket_name" {
  description = "The name of the S3 bucket"  # Description (shown during terraform plan)
  type        = string                       # Data type is string
}
