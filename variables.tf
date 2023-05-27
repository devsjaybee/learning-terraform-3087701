variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  
  description = "Name filter and owner for AMI"

  type = object({
    name = string
    owner = string
  })

  default = {
    values = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }
  
}

variable "environment" {
 
  description = "Development Environment"

  type = object({
    name = string
    cidr = string
  })
  
  default = {
    name = "dev"
    network_prefix = "10.0"
  }

}

variable "ags_min_size" {
  description = "Minimum number of instance in the ASG"
  default = 1
}

variable "asg_max_size" {
  description = "Max number of instance in the ASG"
  default = 2
}

