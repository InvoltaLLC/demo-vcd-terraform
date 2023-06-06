
resource "vcd_vapp" "demo" {
  name = "tfdemo-${local.stage}"

  metadata_entry {
    key         = "Source"
    type        = "MetadataStringValue"
    user_access = "READWRITE"
    is_system   = false
    value       = "https://github.com/InvoltaLLC/demo-vcd-terraform.git"
  }

  metadata_entry {
    key         = "Stage"
    type        = "MetadataStringValue"
    user_access = "READWRITE"
    is_system   = false
    value       = local.stage
  }
}
