variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "name" {
  description = "Base name used for tagging resources"
  type        = string
  default     = "demo"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "30.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDRs for public subnets (one per AZ)"
  type        = list(string)
  default     = ["30.0.1.0/24", "30.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDRs for private subnets (one per AZ)"
  type        = list(string)
  default     = ["30.0.101.0/24", "30.0.102.0/24"]
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default = {
    Project = "terraform-vpc"
    Owner   = "networking"
  }
}
