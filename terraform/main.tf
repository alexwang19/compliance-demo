resource "aws_s3_bucket" "sko_bucket" {
  bucket = "sysdig-sko-bucket-123"
}

resource "aws_s3_bucket_public_access_block" "sko_bucket" {
  bucket = aws_s3_bucket.sko_bucket.id
  block_public_acls = false
  block_public_policy = false
  restrict_public_buckets = false
  ignore_public_acls      = false
}
