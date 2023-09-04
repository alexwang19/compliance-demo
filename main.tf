########################
# Bucket creation
########################
resource "aws_s3_bucket" "my_bucket" {
  bucket = "testing-bucket-sysdig123"
}

##########################
# Bucket private access
##########################
resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}
