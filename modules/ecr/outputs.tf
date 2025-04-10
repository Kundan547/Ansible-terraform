output "frontend_repo_url" {
  value       = aws_ecr_repository.frontend_repo.repository_url
  description = "URL of the frontend ECR repository"
}

output "backend_repo_url" {
  value       = aws_ecr_repository.backend_repo.repository_url
  description = "URL of the backend ECR repository"
}
