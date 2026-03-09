# Setup Checklist

- [x] Create root project folder
- [x] Create app folder
- [x] Create terraform folder
- [x] Create monitoring folder
- [x] Create frontend folder
- [x] Create .github/workflows
- [x] Initialize git
- [x] Create starter files
- [ ] Add first app code
- [ ] Add first Terraform resources
- [ ] Add monitoring config
- [ ] Add CI workflow

## Stage 1 - Project Initialization
- [x] Created root project folder `innercircle-lite-devops-demo`
- [x] Created core directories (`app`, `frontend`, `terraform`, `monitoring`, `.github/workflows`)
- [x] Created backend structure (`app/src`, `app/tests`)
- [x] Added placeholder backend files (`main.py`, `Dockerfile`, `requirements.txt`)
- [x] Added infrastructure placeholders (`terraform/main.tf`, `variables.tf`, `outputs.tf`)
- [x] Added monitoring placeholders (`prometheus/prometheus.yml`, `grafana/`)
- [x] Added CI/CD workflow placeholder (`.github/workflows/ci.yml`)
- [x] Added project documentation (`README.md`, `.gitignore`, `scratchpad.md`)
- [x] Initialized Git repository
- [x] Made initial commit


## Stage 2 - Minimal FastAPI App
- [x] Created `database.py`
- [x] Created `models.py`
- [x] Created `schemas.py`
- [x] Created `main.py`
- [x] Implemented `/health` endpoint
- [x] Implemented `POST /users`
- [x] Implemented `GET /profiles`
- [x] Implemented `POST /match`
- [x] Configured SQLite database for local development
- [x] Ran application locally with `uvicorn`
- [x] Verified API endpoints via Swagger UI (`/docs`)
- [x] Confirmed API responses and database persistence

## Stage 3 - Prometheus Instrumentation
- [x] Installed prometheus-fastapi-instrumentator
- [x] Exposed /metrics endpoint
- [x] Verified metrics locally
- [x] Confirmed app is metrics-ready

## Stage 4 - Dockerize App
- [x] Wrote Dockerfile
- [x] Built Docker image locally
- [x] Ran container
- [x] Verified /health from container

## Stage 5 - Terraform Networking Base
- [x] Created `provider.tf`
- [x] Created `variables.tf`
- [x] Created `terraform.tfvars`
- [x] Created `vpc.tf`
- [x] Defined VPC, public subnets, and private subnets
- [x] Created Internet Gateway
- [x] Created public and private route tables
- [x] Added subnet and VPC outputs
- [x] Ran `terraform init`
- [x] Ran `terraform validate`
- [x] Ran `terraform plan`
- [x] Applied networking infrastructure

## Stage 6 - Terraform Deployment Plumbing
- [x] Created `security.tf`
- [x] Created `ecr.tf`
- [x] Created `iam.tf`
- [x] Created `cloudwatch.tf`
- [x] Defined ALB, ECS, and RDS security groups
- [x] Created ECR repository for container images
- [x] Created ECS execution IAM role
- [x] Created CloudWatch log group
- [x] Ran `terraform plan` and `terraform apply`

## Stage 7 - Terraform ALB
- [x] Created `alb.tf`
- [x] Created public Application Load Balancer
- [x] Created target group for application traffic
- [x] Configured listener on port 80
- [x] Configured target group health check path `/health`
- [x] Added ALB outputs
- [x] Ran `terraform validate`
- [x] Ran `terraform plan`
- [x] Applied ALB infrastructure

## Stage 8 - Terraform ECS
- [x] Created `ecs.tf`
- [x] Created ECS cluster
- [x] Created ECS task definition
- [x] Wired ECR image into container definition
- [x] Wired CloudWatch logs into container definition
- [x] Added environment variables to container
- [x] Created ECS service
- [x] Attached ECS service to ALB target group
- [x] Ran `terraform validate`
- [x] Ran `terraform plan`
- [x] Applied ECS infrastructure