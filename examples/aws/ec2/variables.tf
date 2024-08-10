variable "region" {
  description = "The AWS region to launch resources in"
  default = "eu-central-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default = "t2.micro"
}


variable "ssh_public_key" {
  description = "The public key to use for SSH access"
  type        = string
}
