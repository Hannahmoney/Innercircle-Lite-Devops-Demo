# Group private subnets so RDS can be placed outside public internet exposure
resource "aws_db_subnet_group" "main" {
  name = "${var.project_name}-db-subnet-group"

  subnet_ids = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]

  tags = {
    Name = "${var.project_name}-db-subnet-group"
  }
}

# Create a small MySQL RDS instance for application data
resource "aws_db_instance" "main" {
  identifier             = "${var.project_name}-mysql"
  allocated_storage      = var.db_allocated_storage
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]

  multi_az               = false
  publicly_accessible    = false
  skip_final_snapshot    = true
  deletion_protection    = false

  tags = {
    Name = "${var.project_name}-mysql"
  }
}