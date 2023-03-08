variable "ami" {
  description = "EC2 instance image id"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "Smallest instance - Free tier"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 key name"
  type        = string
  default     = "default-ec2"
}

variable "vpc_security_group_ids" {
  description = "Security Group ids"
  type        = list(string)
  default     = null
}

variable "subnet_id" {
  description = "Subnet id"
  type        = string
  default     = null
}

variable "environment" {
  description = "Resource environment detail"
  type        = string
  default     = null
}