resource "aws_instance" "mavenapp_server" {
  ami                    = "ami-0914547665e6a707c"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["${aws_security_group.mavenapp_security.id}"]
  availability_zone      = "eu-north-1a"
  key_name               = "my_key"
  tags = {
    Name = "mavenapp"
  }
  user_data = file("run_docker.sh")
}

