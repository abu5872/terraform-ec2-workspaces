variable "instance_count" {
  type    = number
  default = 1
}

variable "key_name" {
  type = string
}

variable "ec2_sg" {
  type = string
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "tags" {
  type = map(string)
}
