# Retrieve KMS Key ARN from an AMI or Snapshot ID

This Data Only module will return the KMS Key ARN from an AMI or Snapshot ID.

This is especially useful for using with the [kms](https://registry.terraform.io/modules/so1omon563/kms/aws/latest) module.

The KMS ARN retrieved here can be used to populate the `additional_key_arns` variable there so the key can be added to a Service Linked Role.

Examples for use can be found under the [examples](https://github.com/so1omon563/terraform-aws-aws-ami-snapshot-kms-arn/tree/main/examples) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Auto-generated technical documentation is created using [`terraform-docs`](https://terraform-docs.io/)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.38 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.1 |
| <a name="provider_external"></a> [external](#provider\_external) | 2.2.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ebs_snapshot.ebs_volume_ami_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ebs_snapshot) | data source |
| [aws_ebs_snapshot.ebs_volume_snapshot_id](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ebs_snapshot) | data source |
| [external_external.snap_id](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | An AMI ID to look up KMS information for. Either this or the `snapshot_id` must be specified. | `string` | `null` | no |
| <a name="input_snapshot_id"></a> [snapshot\_id](#input\_snapshot\_id) | An EBS Snapshot ID to look up KMS information for. Either this or `ami_id` must be specified. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | n/a |
| <a name="output_kms_arn"></a> [kms\_arn](#output\_kms\_arn) | n/a |
| <a name="output_snapshot_id"></a> [snapshot\_id](#output\_snapshot\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
