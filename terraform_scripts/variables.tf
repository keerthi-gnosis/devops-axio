variable "security_group_name" {
  description = "Security group name"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "Smallest instance - Free tier"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "EC2 key name"
  type        = string
  default     = "default-ec2"
}