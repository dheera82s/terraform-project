#workspace
#terraform workspace list
#terraform workspace select dev
#terraform apply -var-file=variables/dev.tfvars
#terraform workspace select uat
#terraform apply -var-file=variables/uat.tfvars
#terraform workspace select prd
#terraform apply -var-file=variables/prd.tfvars
#terraform workspace list
#terraform workspace select prd
#terraform destroy -var-file=variables/prd.tfvars

region         = "us-east-1"
instance_types = ["t3.micro", "t3.small", "t3.medium"]
ami_id         = "ami-0236922087fa98b6e"
instance_count = 1
instance_tags = {
  Name        = "dev-tfvars-test"
  project     = "terraformdemo"
  environment = "dev"
}