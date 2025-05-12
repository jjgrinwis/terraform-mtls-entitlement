# Terraform mTLS Entitlement Module

This Terraform module manages certificate entitlements for mTLS configuration.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Terraform Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/)

## Features

- Manages certificate entitlements
- Validates entitlement IDs
- Outputs created hostnames
- Supports version tracking via revision number
- Terraform Cloud no-code module support with automatic workspace configuration

## Usage

### Standard Usage

```hcl
module "mtls_entitlement" {
  source = "git::https://github.com/your-org/terraform-mtls-entitlement.git?ref=v0.1.1"

  entitlement_id    = 12345
  created_hostnames = ["example.com", "api.example.com"]
  revision          = 2
}
```

### Terraform Cloud No-Code Module

This module supports Terraform Cloud's no-code module feature, which allows you to create workspaces directly from the module without writing any code. The configuration is stored in the `.terraform-cloud/metadata.yml` file.

When using this module as a no-code module in Terraform Cloud, the following configurations are automatically applied:

- **Workspace Name**: Automatically prefixed with `mtls-entitlement-`
- **Tags**: `mtls`, `certificates`, `entitlement`, `terraform-managed`
- **Project**: Automatically organized in the "Certificate Management" project
- **Execution Mode**: Remote execution
- **Terraform Version**: ~> 1.3.0
- **Variables**: Predefined with descriptions, types, and validations

To use as a no-code module:
1. Register this module in your Terraform Cloud organization's private registry
2. Click "Create workspace from module" in the Terraform Cloud UI
3. Fill in the required variables
4. Apply the configuration

See the [examples](./examples) directory for more advanced usage.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| entitlement_id | CPS certificate entitlement ID | number | n/a | yes |
| created_hostnames | List of created hostnames | list(string) | [] | no |
| revision | Version number | number | 1 | no |

## Outputs

| Name | Description |
|------|-------------|
| created_hostnames | The created hostnames |
| entitlement_id | The certificate entitlement ID used (sensitive) |
| revision | The current revision number |

## Development

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- [Git](https://git-scm.com/downloads)

### Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This module is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Additional Documentation

For more detailed technical documentation, see [MODULE.md](./MODULE.md).

