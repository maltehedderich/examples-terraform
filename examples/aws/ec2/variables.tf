variable "region" {
  description = "The AWS region to launch resources in"
  default = "eu-central-1"
}

variable "availability_zone" {
  description = "The availability zone to launch resources in"
  default = "eu-central-1a"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default = "t2.micro"
}


variable "ssh_public_key" {
  description = "The public key to use for SSH access"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  default     = "ami-0e04bcbe83a83792e"
}
