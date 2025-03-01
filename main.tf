resource "aws_instance" "todo_app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [var.security_group_id]
  key_name      = var.key_name


  root_block_device {
    volume_size = 20  # Set root volume to 20GB
    volume_type = "gp3"  # General Purpose SSD (gp3 is cheaper than gp2)
    delete_on_termination = true
  }

  tags = {
    Name = var.instance_name
  }

  user_data = <<-EOF
              #!/bin/bash
             sudo apt update -y
              sudo apt install -y docker.io docker-compose python3-pip ansible python3-six
              sudo systemctl start docker
              sudo systemctl enable docker
              pip3 install --upgrade pip
              pip3 install --user ansible six
              echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
              source ~/.bashrc
              EOF
}

