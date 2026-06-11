data "aws_ami" "nandiswar939"{
  owners      = ["465040460089"]
  most_recent = true

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# output "ami_id" {
#     value = data.aws_ami.nandiswar939.id
# }

# data "aws_instance" "mongodv"