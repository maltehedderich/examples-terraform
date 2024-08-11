# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.bucket.id
}

# Output the IAM user's access key (Be cautious with this in production)
output "access_key_id" {
  value = aws_iam_access_key.s3_user_keys.id
}

# Output the IAM user's secret key (Be cautious with this in production)
output "secret_access_key" {
  value     = aws_iam_access_key.s3_user_keys.secret
  sensitive = true
}