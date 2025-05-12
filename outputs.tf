output "created_hostnames" {
  description = "The hostnames created for the certificate"
  value       = var.created_hostnames
}

output "entitlement_id" {
  description = "The certificate entitlement ID used"
  value       = var.entitlement_id
  sensitive   = true
}

output "revision" {
  description = "The current revision number"
  value       = var.revision
}

