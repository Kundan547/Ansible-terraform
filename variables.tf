variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "secret_key" {
  description = "AWS secret access key"
  type        = string
  sensitive   = true
}

variable "key_name" {
  description = "The name of the key pair to use for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "mongo_uri" {
  description = "The MongoDB connection URI"
  type        = string
  sensitive   = true
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "mern-stack"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "eks-cluster"
}

variable "desired_capacity" {
  description = "Desired number of nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of nodes in the EKS node group"
  type        = number
  default     = 5
}

variable "min_size" {
  description = "Minimum number of nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "node_role_arn" {
  description = "The ARN of the IAM role for the EKS node group"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS node group"
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC for the EKS cluster"
  type        = string
}
