module "VPC" {
  source = "./modules/VPC"
}

module "SG" {
  source     = "./modules/S_Group"
  vpc_id     = module.VPC.vpc_id
  depends_on = [module.VPC]
}



module "ASG" {
  source              = "./modules/AutoSG"
  vpc_zone_identifier = module.VPC.Public_ids
  SGroup_id           = module.SG.SGroup_id
  depends_on          = [module.VPC, module.SG]
}
