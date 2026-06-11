# variable "ami_id" {
#   type    = string
#   default = "ami-0220d79f3f480ecf5"
# }

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map
  default = {
    Name        = "terraform-1"
    Terraform   = "true"
    Project     = "naniswar roboshop"
    Environment = "dev"
  }

}

variable "common_tags" {
  type = map
  default = {
    Terraform = "true"
    Project = "roboshop"
    Environment = "dev"
  }
}

variable "sg_tags" {
  type = map
  default = {
    Name        = "allow-all"
    description = "Security Group Name to attach to EC2 instance"
  }
}

variable "cidr" {
  type    = list
  default = ["0.0.0.0/0"]
}
variable "ingress_from_port" {
 type=number
  default = 0
}
variable "ingress_to_port" {
  type=number
  default = 0
}
variable "egress_from_port" {
  type=number  
  default = 0
}
variable "egress_to_port" {
  type=number  
  default = 0
}

variable "protocol" {
  type    = string
  default = "-1"
}
