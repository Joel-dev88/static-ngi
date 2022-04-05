provider "aws" {
  region = var.region
  profile = var.profile
}

resource "aws_instance" "site" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
    key_name = "ndtaaj_scotty"
    vpc_security_group_ids = [ "sg-024877c5d0cf18744", "sg-0b1b64400d0258834" ]
    tags = {
        Name = var.name
        group = var.group
    }
}