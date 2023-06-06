terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
    }
  }
  cloud {
    organization = "involta-evers"

    workspaces {
      tags = ["vcd-demo"]
    }
  }
}

provider "vcd" {
  user                 = ""
  password             = ""
  auth_type            = "api_token"
  api_token            = var.token
  org                  = "SE-Org"
  vdc                  = "SE-OrgVDC"
  url                  = "https://icc001.invlb.com/api"
  allow_unverified_ssl = true
}
