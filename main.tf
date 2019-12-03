module "terraform-enterprise" {

  source  = "hashicorp/terraform-enterprise/aws"

  version = "0.1.0"

  ## This is the domain we are using in Route53.

  domain                = "hashicorp-success.com"

  ## This is the replicated license file.

  license_file          = "hashicorp-internal---william-lee.rli"

  ## This is the VPC ID to deploy TFE HA into.

  vpc_id                = "vpc-0cd15f0680c23c54a"

}

 

output "tfe_cluster" {

  value = {

    application_endpoint = "${module.terraform-enterprise.application_endpoint}"

    application_health_check = "${module.terraform-enterprise.application_health_check}"

   # ...

  }

}