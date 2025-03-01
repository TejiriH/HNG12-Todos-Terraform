variable "vpc_id" {}
variable "security_group_id" {}
variable "subnet_id" {}
variable "ami_id" {}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {}  # Ensure you have an SSH key pair in AWS
variable "instance_name" {
  default = "todo-app-instance"
}

