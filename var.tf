variable "vpc_id" {
    default = "10.0.0.0/16"
    type = string
}

variable "subnet_ciders" {
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    type = list(string)
}

variable "region" {
    default = "ap-south-1"
    type = string
}

variable "azs" {
    default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
    type = list(string)
}