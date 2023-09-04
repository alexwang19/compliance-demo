resource "aws_s3_bucket" "sko_bucket" {
  bucket = "sysdig-sko-bucket-1243"
  acl = "private"
}

resource "aws_s3_bucket_public_access_block" "sko_bucket" {
  bucket = aws_s3_bucket.sko_bucket.id
  block_public_acls = true
  block_public_policy = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}
