provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample-insatnce-1" {
  instance_type = "t2.micro"
  ami = "ami-0005e0cfe09cc9050"
  subnet_id = "subnet-0ee6c62c6522b8d26"
  user_data = "${file("user-data.sh")}"
  vpc_security_group_ids = [ "sg-093234d361f675e75" ]
  tags={
    name="sample-instance-1"
  }
}

resource "aws_security_group" "sg-1" {
    name = "instance-in-port"
    vpc_id = "vpc-0fdf7122beda7523b"
}

output "public-ip" {
 value=aws_instance.sample-insatnce-1.public_ip  
}