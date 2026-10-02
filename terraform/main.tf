terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# PROVEEDOR: plataforma con la que Terraform se comunica
provider "docker" {}

# RECURSO 1: imagen que se utilizará para crear los servidores Nginx
resource "docker_image" "nginx" {
  name         = var.imagen_nginx
  keep_locally = true
}

# RECURSO 2: entorno de pruebas
resource "docker_container" "pruebas" {
  name  = var.nombre_pruebas
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.puerto_pruebas
  }
}

# RECURSO 3: entorno de producción
resource "docker_container" "produccion" {
  name  = var.nombre_produccion
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.puerto_produccion
  }
}