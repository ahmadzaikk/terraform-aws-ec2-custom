# terraform-aws-ec2
Terraform AWS EC2 Module


-->

Terraform module to provision AWS [`EC2`]



## Introduction

The module will create:

* EC2 Instance


## Usage
Create terragrunt.hcl config file, copy/past the following configuration.

## Operating system selection

|Operating system|
|----------------|
| amazon         |
| amazon2        |
| centos7        | 
| centos8        |
| rhel6          |
| rhel7          |
| rhel8          |
| ubuntu1804     |
| ubuntu1810     |
| ubuntu1904     |
| windows2019    |
| windows2016    |
| windows2012r2  |
| customlinux    |
| customlwin    |


```hcl

#
# 


# make sure you deploy the security group before creating ec2 instance, ec2 instance depends on the security group.

data "terraform_remote_state" "vpc-out-put" {
  backend = "remote"

  config = {
    hostname = "scalr.io" # enter the ucop scalr hostname
    organization = "Organization id" # make sure to update this with scalr environment organization ID
    workspaces = {
      name = "workspace name" # enter the work space name
    }
  }
}

data "terraform_remote_state" "security-group" {
  backend = "remote"

  config = {
    hostname = "scalr.io" enter the ucop scalr hostname
    organization = "Organization id" # make sure to update this with scalr environment organization ID
    workspaces = {
      name = "security-group" enter the the work space name
    }
  }
}

module "ec2" {
  source = "git::https://git@github.com/ucopacme/terraform-aws-ec2-custom.git//?ref=v0.0.2"
  enabled                = true       # change it to false to destory the ec2 instance
  os                     = "ami-id"   # List of os(amazon,amazon2,centos7,centos8,rhel6,rhel7,rhel8,ubuntu1804,ubuntu1810,ubuntu1904,windows2019,windows2016,windows2012r2,customwin,customlinux)
  instance_type          = "t3a.large" # Default type is t2.micro
  subnet_id              = data.terraform_remote_state.vpc-tes-prod-vpc.outputs.private_subnet_ids[0]
  vpc_security_group_ids = [data.terraform_remote_state.security-group-prod-web-sg.outputs.id]
  key_name               = "xxx" # enter the key name
  root_volume_size       = 100    # Default size is 100GB
  root_volume_encryption = true  # Default is true, Change it to False to create unencrypted root volume
  enabled_eip            = false # Default is false ,chnage it to true to add EIP
  enabled_ebs_volume1    = false # Default is false, change it to true to add ebs volume 1 (device_name = "/dev/sdh")
  enabled_ebs_volume2    = false  # Default is false, change it to true to add ebs volume 2 (device_name = "/dev/sdf")
  ebs_volume2_size       = 10    # Default null
  enabled_ebs_volume3    = false  # Default is false, change it to true to add ebs volume 3 (device_name = "/dev/sdj")
  ebs_volume3_size       = 10    # Default null
  enabled_ebs_volume4    = false  # Default is false, change it to true to add ebs volume 4 (device_name = "/dev/sdi")
  ebs_volume4_size       = 10    # Default null
  enabled_ebs_volume5    = false  # Default is false, change it to true to add ebs volume 5 (device_name = "/dev/sdk")
  ebs_volume5_size       = 10    # Default null
  tags = {
    "ucop:application" = "xxx"
    "ucop:createdBy"   = "terraform"
    "ucop:environment"  = "xxx"
    "ucop:group"       = "xxx"
    "ucop:source"      = join("/", ["https://github.com/ucopacme/ucop-terraform-deployment/terraform/xxx"])
    "Name"             = "xxx"
    "ucop:owner"       = "xxx"
  }
}