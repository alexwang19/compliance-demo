resource "aws_s3_bucket" "sko_bucket" {
  bucket = "sysdig-sko-bucket-1234"
}

resource "aws_s3_bucket_public_access_block" "sko_bucket" {
  bucket = aws_s3_bucket.sko_bucket.id
  acl = "private"
}
