variable "instance_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The key pair name to use for the EC2 instance"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy the EC2 instance in"
  type        = string
  default     = "us-east-1"
}

variable "security_group_ids" {
  description = "The security group IDs to associate with the EC2 instance"
  type        = list(string)
}
