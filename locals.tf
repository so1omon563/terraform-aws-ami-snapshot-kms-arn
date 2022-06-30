locals {
  # So for_each can be used to create them. Only care about the key here, so the value is set to "ignore"
  ami_id      = var.ami_id != null ? { (var.ami_id) = "ignore" } : {}
  snapshot_id = var.snapshot_id != null ? { (var.snapshot_id) = "ignore" } : {}
}
