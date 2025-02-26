
module "rg_group"{
  source = "../modules/module-resource/"
  name     = "rg-application"

}
 
module "vnet_application"{
  source = "../modules/module-vnet"
  name     = "rg-vnet"
}
 