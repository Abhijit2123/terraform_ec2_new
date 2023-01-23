terraform {
  backend "s3" {
    bucket = "cm-aws-batch-abhi"
    key    = "statefile/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
}
