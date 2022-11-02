module "vpc_example_complete-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/complete-vpc"
  version = "3.14.4"
}
module "iam_example_iam-account" {
  source  = "terraform-aws-modules/iam/aws//examples/iam-account"
  version = "5.4.0"
}
resource "aws_instance" "app_server1" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  ingress_cidr_blocks = ["0.0.0.0/16"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
