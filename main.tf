terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "hola_mundo" {
  provisioner "local-exec" {
    command = "echo 'Hola desde Terraform' > saludo.txt"
  }
}
