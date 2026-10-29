variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "List of private subnet CIDR blocks"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of public subnet CIDR blocks"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
}