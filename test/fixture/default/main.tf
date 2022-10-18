variable "ami_id" {}

variable "snapshot_id" {}

module "ami-kms-arn" {
  source = "../../.."


  ami_id = var.ami_id
}
output "ami-kms-arn" { value = module.ami-kms-arn }

module "snapshot-kms-arn" {
  source = "../../.."

  snapshot_id = var.snapshot_id
}
output "snapshot-kms-arn" { value = module.snapshot-kms-arn }
