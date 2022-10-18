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
