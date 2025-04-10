variable "public_subnet" {
    description = "The ID of the public subnet"
    type        = string
}
variable "private_subnet" {
    description = "The ID of the private subnet"
    type        = string
}
variable "sg_ids" {
  type = map(string)
}
variable "key_name" {   
    description = "The name of the key pair to use for EC2 instances"
    type        = string
}
variable "instance_type" {  
    description = "The EC2 instance type"
    type        = string
    default     = "t2.micro"
}
