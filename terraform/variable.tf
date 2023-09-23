variable "filename" {
  default = "/home/bilal/Desktop/Projects/terraform-learning/day2/terraform-variable/devops-automated.txt"
}

variable "content" {
  default = "This is auto generated from a variable"
}

variable "devops_op_trainer" {}

variable "map_content" {
  type = map(any)
  default = {
    "content1" = "This is content number one"
    "content2" = "This is content number two"
  }
}

variable "list_content" {
  type    = list(any)
  default = ["Hello Bilal", "Hello Ahmed"]
}

variable "aws_ec2_object" {
  type = object({
    name      = string
    instances = number
    keys      = list(string)
    ami       = string
  })
  default = {
    name      = "ec2_instance"
    instances = 4
    keys      = ["key1.pem", "key2.pem"]
    ami       = "ubuntu-3872"
  }
}

variable "number_of_students" {}
