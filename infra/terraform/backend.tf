terraform {
  backend "s3" {
    bucket         = "devops-eks-flask-tfstate-e0bc1c39"
    key            = "infra/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "devops-eks-flask-tflock"
    encrypt        = true
  }
}
