variable "ami" {
  description = "Amazon Machine Image"
  type        = string
  default     = "amazon2"
}
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

#variable "associate_public_ip_address" {
 # default     = false
  #description = "(Optional) Associate a public ip address with an instance in a VPC. Boolean value."
  #type        = bool
#}
variable "network_interface_id" {
  description = "network_interface_id"
  type        = string
  default     = null
}
variable "enabled_eip" {
  default     = false
  description = "(Optional) Associate a public ip address with an instance in a VPC. Boolean value."
  type        = bool
}

# variable "desc_sg" {
#   description = "security group description"
#   type        = string
# }

variable "enabled" {
  type        = string
  description = "Set to `false` to prevent the module from creating any resources"
  default     = "true"
}

variable "root_volume_encryption" {
  type        = bool
  description = "Set to `false` to prevent encyption"
  default     = true
}
variable "enabled_ebs_volume1" {
  type        = bool
  description = "Set to `false` to prevent the module from creating any resources"
  default     = false
}
variable "enabled_ebs_volume2" {
  type        = bool
  description = "Set to `false` to prevent the module from creating any resources"
  default     = false
}
variable "enabled_ebs_volume3" {
  type        = bool
  description = "Set to `false` to prevent the module from creating any resources"
  default     = false
}
variable "enabled_ebs_volume4" {
  type        = bool
  description = "Set to `false` to prevent the module from creating any resources"
  default     = false
}
variable "enabled_ebs_volume5" {
  type        = bool
  description = "Set to `false` to prevent the module from creating any resources"
  default     = false
}
variable "enabled_ebs_volume6" {
  type        = bool
  description = "Set to `false` to prevent the module from creating any resources"
  default     = false
}

# variable "enable_ebs_volume1_attachment" {
#   type        = bool
#   description = "Set to `false` to prevent the module from creating any resources"
#   default     = false
# }
# variable "enable_ebs_volume2_attachment" {
#   type        = bool
#   description = "Set to `false` to prevent the module from creating any resources"
#   default     = false
# }


variable "instance_type" {
  default     = "t2.micro"
  description = "instance_type"
  type        = string
}

variable "name_ec2" {
  description = "ec2 name"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Subnet Id"
  type        = string
  default     = ""
}

variable "tags" {
  default     = {}
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "vpc_id" {
  description = "VPC Id"
  type        = string
  default     = ""
}

variable "private_ips_count" {
  type        = number
  description = "Size of the root volume in gigabytes"
  default     = 0
}

variable "root_volume_size" {
  type        = number
  description = "Size of the root volume in gigabytes"
  default     = 100
}

variable "ebs_volume1_size" {
  type        = number
  description = "size of ebs volume"
  default     = null
}
variable "ebs_volume2_size" {
  type        = number
  description = "size of ebs volume"
  default     = null
}
variable "ebs_volume3_size" {
  type        = number
  description = "size of ebs volume"
  default     = null
}
variable "ebs_volume4_size" {
  type        = number
  description = "size of ebs volume"
  default     = null
}
variable "ebs_volume5_size" {
  type        = number
  description = "size of ebs volume"
  default     = null
}
variable "ebs_volume6_size" {
  type        = number
  description = "size of ebs volume"
  default     = null
}

variable "volume_type" {
  type        = string
  description = "volume_type"
  default     = "gp3"
}

variable "role_name" {
  type    = string
  default = ""

}

variable "key_name" {
  type        = string
  description = "EC2 key"
  default     = ""
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "(optional) describe your variable"
  default     = null
}

variable "instance_profile" {
  type        = string
  description = "(optional) describe your variable"
  default     = null
}

variable "ebs_optimized" {
  type        = bool
  default     = false
  description = "If true, the launched EC2 instance will be EBS-optimized."
}

variable "monitoring" {
  type        = bool
  default     = false
  description = "If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)."
}

variable "disable_api_termination" {
  type        = bool
  default     = false
  description = "If true, enables EC2 Instance Termination Protection."
}
variable "user_data" {
  type        = string
  default     = ""
  description = "(Optional) A string of the desired User Data for the ec2."
}

# AMI search

variable "os" {
  description = "The Os reference to search for"
  default     = ""
}







