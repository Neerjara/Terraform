module "linux_vm" {
  source = "../../modules/linux-vm"

  vm_name = "lab-01"
  subnet_id = module.network.subnet_ids["web"]
  admin_user = "azure_admin"

  public_key = file("id_rsa.pub")

}
