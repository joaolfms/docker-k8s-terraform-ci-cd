variable "region" {
  description = "Define what region the instance will be deployed"
  default     = "us-east-1"
}

variable "nat_instance" {
    description = "Nat instance for cluster"
    default     = "nat-cluster"
}

variable "name" {
  description = "Name of the application"
  default     = "Cluster"
}

variable "env" {
  description = "Environment of the application"
  default     = "Development"
}

variable "instance_type" {
  description = "AWS Instance type define the hardware configuration of the instance"
  default     = "t2.micro"
}

variable "repo" {
  description = "Repository of the application"
  default     = "https://github.com/joaolfms/docker-k8s-terraform-ci-cd"
}

variable "subnet_name" {
    description = "subnet name"
    default     = "subnet-cluster"
}

variable "cidir_block_vpc" {
    description = "Range cidr block for vpc"
    default     = "10.0.0.0/16"
}

variable "cidir_block_subnet" {
    description = "Range cidr block for subnet"
    default     = "10.0.100.0/24"
}

variable "cidir_block_route_table" {
    description = "Range cidr block for route table"
    default     = "0.0.0.0/0"
}

