output "ec2_instance_id" {
  value = module.ec2_instance_type.instance_id
  
}

output "ec2_public_ip" {
  value = module.ec2_instance_type.public_ip
}

output "ec2_private_ip" {
  value = module.ec2_instance_type.private_ip
}

output "s3_bucket_id" {
  value = module.s3.bucket_id
}