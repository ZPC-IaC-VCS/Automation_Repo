resource "aws_s3_bucket" "logging" {
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled    = true
  }
}
module "s3-bucket_example_complete" {
  source  = "terraform-aws-modules/s3-bucket/aws//examples/complete"
  version = "3.4.0"
}