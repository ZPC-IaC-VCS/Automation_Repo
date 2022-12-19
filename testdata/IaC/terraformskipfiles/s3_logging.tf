resource "aws_s3_bucket" "logging1" {
  #zpc-skip-policy: ZS-AWS-00018:testing
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled    = true
  }
}
