provider "aws" {
  region = var.aws_region
}
#centralizar o arquivo de controle de estado
terraform{
  backend "s3" {
    bucket = "terraform-state-igti-ney"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}
