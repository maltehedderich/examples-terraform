variable "bucket_user_name" {
  description = "The name of the IAM user to create for S3 access"
}

variable "iam_policy_name" {
  description = "The name of the IAM policy to attach to the user"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
}

variable "region" {
  description = "The AWS region to launch resources in"
  default = "eu-central-1"
}

variable "enable_versioning" {
  description = "Enable versioning on the S3 bucket"
  default = true
}

variable "tags" {
    description = "A map of tags to add to all resources"
    default = {
        Name        = "Ubuntu Backup Bucket"
        Environment = "Production"
    }
}