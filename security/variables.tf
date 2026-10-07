variable "project_id" {
  type = string
}

variable "github_owner" {
  type = string
}

variable "deployments" {
  type = map(object({
    github_repository = string
    site_id = string
  }))
}