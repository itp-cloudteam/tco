variable "instance_info" {
  type    = map
  default = {
    #"servername" = ["ami","instance type","az","subnet","true/false","ostype","env"]
  
  }
}



variable "ebs_info" {
  type    = map
  default = {
    #"ebs_name" = ["az",size,"servername","env"]
  }

}

variable "vol_attach_info" {
  type = map
  default = {
    #attachment name = [device_name,ebs_name,servername]
  }
}

variable "eips" {

  type = map
  default = {
    "eip1" = ""
    "eip2" = ""
  }

}

variable "vpc_info" {

  type = map
  default = {
    #"vpc name" = [cidr range,environment,region]
    "vpc1" = ["10.0.0.0/16","prod","eu-west-2"]
  
  }

}


variable "sg_meta_data" {

  type = map
  default = {
    #sg name = [region,tier,appName,environment]
    "public_sg" = ["us-east-1","app","tco-web","prod","vpc1"]
	"private_sg" = ["us-east-1","db","tco-db","prod","vpc1"]

   }
}

variable "sg_rules" {

  type = map
  default = {
    #rule_name = ["ingress/egress",from_port,to_port,protocol,cidr_blocks,sg_name]
    "rule1" = ["ingress",443,443,"tcp",["10.0.1.0/24","10.0.2.0/24"],"public_sg"]
    "rule2" = ["ingress",80,80,"tcp",["10.0.1.0/24","10.0.2.0/24"],"private_sg"]
	"rule3" = ["egress",0,0,"-1",["0.0.0.0/0"],"public_sg"]
	"rule4" = ["egress",0,0,"-1",["0.0.0.0/0"],"private_sg"]
	
  
  }

}



variable "environment" {

  type = string 

  default = "dev"

}


variable "vpc_cidr" {

  type = string
  
  default = "10.0.0.0/16"
  
}

variable "region" {

  type = string
  
  default = "eu-west-2"

}


variable "subnets_info" {
  
  type = map
  
  default= {
      #subnet_name = [ application , AZ , cidr block , vpc name , environment ]
	  "public_subnet1"=["app","eu-west-2a","10.0.1.0/24","vpc1","prod"]
	  "public_subnet2"=["app","eu-west-2b","10.0.2.0/24","vpc1","prod"]
	  "private_subnet1"=["db","eu-west-2c","10.0.3.0/24","vpc1","prod"]
	}
}

variable "igw_info" {
  type = map
  default = {
    "igw1" = ["vpc1"]
  }
}
variable "natgw_info" {
  
  type = map
  default = {
    #nat_gateway_name = [eip id , public subnet id,igw id]
    "natgw1" = ["eip1","public_subnet1","igw1"] 
  
  }

}

variable "route_tables" {

  type = map
  default = {
     #route_type_name = [vpc ,AZ ,environment]
    "private_rt" = ["vpc1","us-west-2a","prod"]
	"public_rt"  = ["vpc1","us-west-2a","prod"]
  
  }

}

variable "gateway_routes" {

  type = map
  default = {
  
    "gtw_rt1" = ["public_rt","0.0.0.0/0","igw1"]
  
  }
}

variable "nat_gateway_routes" {

  type = map
  default = {
  
    "nat_gtw_rt1" = ["private_rt","0.0.0.0/0","natgw1"]
  
  }
}