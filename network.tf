resource "vcd_vapp_network" "va_net" {

  name               = "vapp-net-${local.stage}"
  vapp_name          = vcd_vapp.demo.name
  gateway            = "192.168.2.1"
  prefix_length      = "24"
  dns1               = "192.168.2.1"
  dns2               = "192.168.2.2"
  dns_suffix         = "demo1.involta.com"
  guest_vlan_allowed = true

  # VCD 10.4.1+ API does not allow to remove vApp network from
  # a powered on vApp. Setting reboot_vapp_on_removal to true
  # will allow to power off parent vApp for network removal.
  # Note. It will power on the vApp if it was not powered off 
  # before the operation.
  # reboot_vapp_on_removal = true

  static_ip_pool {
    start_address = "192.168.2.51"
    end_address   = "192.168.2.100"
  }

  dhcp_pool {
    start_address = "192.168.2.2"
    end_address   = "192.168.2.50"
  }
}
