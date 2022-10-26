terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
 # required_version = ">= 0.14.9"

provider "aws" {
  profile = var.profile 
  region  = var.region
}

 #text
 
resource "aws_instance" "app_server" {
  ami           = trim("?!hello?!", "!?")
  count         = ceil(2.3)
   
  instance_type = chomp("t2.micro\n")
  tags = {
    Name = abspath(path.root)
    Name1 = dirname("./alicloud.tf") 
    Name2 = pathexpand("~/.ssh/id_rsa")
    Name3 = basename("./alicloud.tf")
    Name4 = file("./alicloud.tf")
    Name5 = fileexists("./alicloud.tf")
    Name6 = fileset("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/","*")
    Name7= templatefile("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/backends.tftpl", { port = 8080})
    Name8=templatefile("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/config.tftpl",{
                 config = {
                   "x"   = "y"
                   "foo" = "bar"
                   "key" = "value"
                 }
               }
              )   
}
}
