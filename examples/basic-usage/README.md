# Basic usage

Basic usage example.

Example shows using Default Tags in the provider as well as passing additional tags into the resource.
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Examples

```hcl
# Examples show looking information with an AMI id and a snapshot id.

module "ami-kms-arn" {
  source  = "so1omon563/ami-snapshot-kms-arn/aws"
  version = "1.0.0" # Replace with appropriate version

  ami_id = "ami-052efd3df9dad4825" # Publicly available Ubuntu AMI. Does not have a KMS key. May not be available in the future.
}
output "ami-kms-arn" { value = module.ami-kms-arn }

module "snapshot-kms-arn" {
  source  = "so1omon563/ami-snapshot-kms-arn/aws"
  version = "1.0.0" # Replace with appropriate version

  snapshot_id = "snap-02d9369affc74b4f8" # Publicly available Ubuntu AMI. Does not have a KMS key. May not be available in the future.
}
output "snapshot-kms-arn" { value = module.snapshot-kms-arn }
```

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ami-kms-arn"></a> [ami-kms-arn](#module\_ami-kms-arn) | so1omon563/ami-snapshot-kms-arn/aws | 1.0.0 |
| <a name="module_snapshot-kms-arn"></a> [snapshot-kms-arn](#module\_snapshot-kms-arn) | so1omon563/ami-snapshot-kms-arn/aws | 1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami-kms-arn"></a> [ami-kms-arn](#output\_ami-kms-arn) | n/a |
| <a name="output_snapshot-kms-arn"></a> [snapshot-kms-arn](#output\_snapshot-kms-arn) | n/a |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
