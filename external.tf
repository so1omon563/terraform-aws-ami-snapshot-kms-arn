data "external" "snap_id" {
  for_each = local.ami_id
  program  = ["sh", "-c", "aws ec2 describe-images --image-ids ${var.ami_id} | jq '.Images[0].BlockDeviceMappings[0].Ebs | {id: .SnapshotId}'"]
}
