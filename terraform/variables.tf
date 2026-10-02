variable "imagen_nginx" {
  description = "Imagen del servidor web"
  type        = string
  default     = "nginx:1.27"
}

variable "nombre_pruebas" {
  description = "Nombre del entorno de pruebas"
  type        = string
  default     = "web-pruebas"
}

variable "puerto_pruebas" {
  description = "Puerto externo del entorno de pruebas"
  type        = number
  default     = 8081
}

variable "nombre_produccion" {
  description = "Nombre del entorno de producción"
  type        = string
  default     = "web-produccion"
}

variable "puerto_produccion" {
  description = "Puerto externo del entorno de producción"
  type        = number
  default     = 8082
}