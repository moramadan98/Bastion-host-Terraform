module "Network" {
  source         = "./Network"
  vpc_cidr       = var.vpc_cidr
  pub_sub_1_cidr = var.pub_sub_1_cidr
  pub_sub_2_cidr = var.pub_sub_2_cidr
  pri_sub_1_cidr = var.pri_sub_1_cidr
  pri_sub_2_cidr = var.pri_sub_2_cidr
}