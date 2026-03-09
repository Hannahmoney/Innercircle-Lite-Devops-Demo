# Create an ECR repository to store Docker images
resource "aws_ecr_repository" "app_repo" {
  name = "${var.project_name}-api"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_name}-ecr"
  }
}