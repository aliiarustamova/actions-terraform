provider aws {
    region = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-06971c49acd687c30"
  instance_type = "t2.micro"
}

#variable region {}
#variable ami_id {}
#variable instance_type {}

terraform {
  backend "s3" {
    bucket = "kaizen-aliiar"
    key    = "terraform.tfstate"
    region = "us-east-2"
    use_lockfile = true
  }
}
