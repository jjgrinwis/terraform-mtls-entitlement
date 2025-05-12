# Basic mTLS Entitlement Example

This example demonstrates how to use the mTLS entitlement module to manage certificate entitlements.

## Usage

```hcl
module "certificate_entitlement" {
  source = "../../"  # Path to the parent module

  entitlement_id    = 12345  # Replace with your actual entitlement ID
  created_hostnames = ["api.example.com", "service.example.com"]
  revision          = 1
}
```

## Prerequisites

- Terraform >= 1.0.0
- A valid certificate entitlement ID

## Running the Example

1. Initialize Terraform:
   ```
   terraform init
   ```

2. Review the execution plan:
   ```
   terraform plan
   ```

3. Apply the configuration:
   ```
   terraform apply
   ```

4. Clean up when done:
   ```
   terraform destroy
   ```

## Outputs

| Name | Description |
|------|-------------|
| created_hostnames | The hostnames created for the certificate |
| revision | The current revision number |

