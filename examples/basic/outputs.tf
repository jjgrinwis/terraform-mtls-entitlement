output "created_hostnames" {
  description = "The hostnames created for the certificate"
  value       = module.certificate_entitlement.created_hostnames
}

output "revision" {
  description = "The current revision number"
  value       = module.certificate_entitlement.revision
}

