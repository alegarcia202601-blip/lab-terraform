output "url_pruebas" {
  description = "Dirección del entorno de pruebas"
  value       = "http://localhost:${var.puerto_pruebas}"
}

output "url_produccion" {
  description = "Dirección del entorno de producción"
  value       = "http://localhost:${var.puerto_produccion}"
}