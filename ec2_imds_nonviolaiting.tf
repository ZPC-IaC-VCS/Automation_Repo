resource "aws_instance" "bar" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"
  monitoring    = true

  metadata_options = {
      http_endpoint = "disabled"    
      http_tokens = "required"
  }
}