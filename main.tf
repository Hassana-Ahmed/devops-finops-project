
provider "aws" {
  region = "us-east-1"
}

# Aik mehanga instance taake report achi bane
resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "m5.4xlarge" 

  tags = {
    Name = "DevOps-FinOps-Project"
  }
}

# 1TB ki storage taake cost breakdown bada dikhe
resource "aws_ebs_volume" "storage" {
  availability_zone = "us-east-1a"
  size              = 1000
  type              = "gp3"
}
