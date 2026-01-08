variable "aws_region" {
  type        = string
  description = "AWS region to deploy to"
  default     = "eu-central-1"
}

variable "project_name" {
  type        = string
  description = "Project name prefix"
  default     = "devops-eks-flask"
}
