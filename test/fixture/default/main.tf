variable "ami_id" {}

variable "snapshot_id" {}

module "ami-kms-arn" {
  source  = "so1omon563/ami-snapshot-kms-arn/aws"
  version = "0.1.0" # Replace with appropriate version

  ami_id = var.ami_id
}
output "ami-kms-arn" { value = module.ami-kms-arn }

module "snapshot-kms-arn" {
  source  = "so1omon563/ami-snapshot-kms-arn/aws"
  version = "0.1.0" # Replace with appropriate version

  snapshot_id = var.snapshot_id
}
output "snapshot-kms-arn" { value = module.snapshot-kms-arn }
