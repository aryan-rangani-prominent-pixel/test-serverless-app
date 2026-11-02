variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "env" {
  default = "dev"
}

variable "public_subnets" {
  default = "10.0.1.0/24"
}

variable "private_subnets" {
  default = "10.0.2.0/24"
}

variable "lb_name" {
  default = "test-lb-tf"
}

variable "api_gw_name" {
  default = "hello-api"
}

variable "s3_bucket" {
  default = "serverless-bucket-aryan-2026"
}

variable "function_name" {
  default = "serverless-app"
}

variable "runtime" {
  default = "python3.14"
}

variable "handler" {
  default = "handler.lambda_handler"
}

variable "myregion" {
  default = "sa-east-1"
}

variable "accountId" {
  default = 575458732659
}

variable "stage_name" {
  default = "dev"
}