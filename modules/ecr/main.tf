resource "aws_ecr_repository" "frontend_repo" {
  name                 = "mern-frontend-repo"
  image_tag_mutability = "MUTABLE"
  force_delete          = true

  encryption_configuration {
    encryption_type = "AES256"
  }
}

resource "aws_ecr_repository" "backend_repo" {
  name                 = "mern-backend-repo"
  image_tag_mutability = "MUTABLE"
  force_delete          = true

  encryption_configuration {
    encryption_type = "AES256"
  }
}
