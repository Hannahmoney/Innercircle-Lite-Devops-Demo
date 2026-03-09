aws_region            = "eu-west-1"
project_name          = "innercircle-lite"

vpc_cidr              = "10.0.0.0/16"

public_subnet_1_cidr  = "10.0.1.0/24"
public_subnet_2_cidr  = "10.0.2.0/24"

private_subnet_1_cidr = "10.0.11.0/24"
private_subnet_2_cidr = "10.0.12.0/24"

az_1                  = "eu-west-1a"
az_2                  = "eu-west-1b"

container_port = 8000

#database
db_name              = "innercircle"
db_username          = "adminuser"
db_password          = "InnerCircle123!"
db_instance_class    = "db.t3.micro"
db_allocated_storage = 20