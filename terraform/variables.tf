variable "aws_region" {
  description = "Região da AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Nome utilizado para identificar o projeto"
  type        = string
  default     = "atividade-devops"
}
