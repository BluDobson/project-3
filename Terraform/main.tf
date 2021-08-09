provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "~/.aws/credentials"
}

module "vpc" {
  source         = "./vpc"
  vpc_cidr_block = "172.100.0.0/16"
}

module "manager_node" {
  source                 = "./ec2"
  subnet_id              = module.subnets.subnet_1
  vpc_security_group_ids = [module.sgs.sg_id]
  ami_id                 = var.ami_id
}

module "subnets" {
  source         = "./sns"
  vpc_id = module.vpc.vpc_id
  vpc_cidr_block = module.vpc.vpc_cidr_block
}

module "sgs" {
  source = "./sgs"
  vpc_id = module.vpc.vpc_id
}

module "iam" {
  source = "./iam"
}

module "igw" {
  source   = "./igw"
  vpc_id   = module.vpc.vpc_id
  subnet_1 = module.subnets.subnet_1
  subnet_2 = module.subnets.subnet_2
}

module "eks" {
  source               = "./eks"
  subnet_ids           = module.subnets.subnet_ids
  cluster_iam_role_arn = module.iam.cluster_iam_role
  node_iam_role_arn    = module.iam.node_iam_role
  available_subnets    = [module.subnets.subnet_1, module.subnets.subnet_2]
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "key_pair" {
  source     = "./key_pair"
}