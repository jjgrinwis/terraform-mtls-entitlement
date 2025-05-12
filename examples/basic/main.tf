module "certificate_entitlement" {
  source = "../../"  # Path to the parent module

  entitlement_id    = var.entitlement_id
  created_hostnames = var.hostnames
  revision          = var.revision
}

