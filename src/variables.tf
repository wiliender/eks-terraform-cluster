variable "aws_region" {
  description = "Região da AWS onde os recursos serão provisionados"
  type        = string
  nullable    = false
}

variable "aws_vpc_name" {
  description = "Nome atribuído à VPC criada"
  type        = string
  nullable    = false
}

variable "aws_vpc_cidr" {
  description = "Bloco CIDR principal da VPC"
  type        = string
  nullable    = false
}

variable "aws_vpc_azs" {
  description = "Lista de zonas de disponibilidade utilizadas na VPC"
  type        = list(string)
  nullable    = false
}

variable "aws_vpc_private_subnets" {
  description = "Lista de subnets privadas dentro da VPC"
  type        = list(string)
  nullable    = false
}

variable "aws_vpc_public_subnets" {
  description = "Lista de subnets públicas dentro da VPC"
  type        = list(string)
  nullable    = false
}

variable "aws_eks_name" {
  description = "Nome atribuído ao cluster EKS"
  type        = string
  nullable    = false
}

variable "aws_eks_version" {
  description = "Versão do Kubernetes utilizada no cluster EKS"
  type        = string
  nullable    = false
}

variable "aws_eks_managed_node_groups_instance_types" {
  description = "Tipos de instâncias utilizadas nos node groups gerenciados do EKS"
  type        = list(string)
  nullable    = false
}

variable "aws_project_tags" {
  description = "Mapa de tags aplicadas aos recursos provisionados"
  type        = map(string)
  nullable    = false
}
