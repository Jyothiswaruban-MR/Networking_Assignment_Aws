resource "aws_instance" "ec2_instance" {
ami = "ami-084568db4383264d4"
instance_type ="t2.micro"
key_name = "MyNewKeyPair"

  security_groups = [aws_security_group.ec2_sg.name]

 tags = {
    Name = "MyEC2Instance"
  }

  # Enable SSH access
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update -y
              sudo apt-get install -y docker.io
              sudo systemctl enable docker
              sudo systemctl start docker
              EOF

}