##### General Configs #####

variable "project_name" {
  description = "O nome do projeto, usado para nomear recursos no escopo deste Terraform."
  type        = string
}

variable "region" {
  description = "A região da AWS onde os recursos serão criados."
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC."
  type        = string
}

variable "public_subnets" {
  description = "Lista de subnets públicas na VPC."
  type        = list(string)
}

variable "private_subnets" {
  description = "Lista de subnets privadas na VPC."
  type        = list(string)
}

#### ECS General ######

variable "capacity_providers" {
  type        = list(any)
  description = "A lista dos capacity providers que serão permitidos no cluster fargate"
  default = [
    "FARGATE", "FARGATE_SPOT"
  ]
}