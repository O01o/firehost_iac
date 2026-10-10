variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "name" {
  type = string
}

variable "deployments" {
  type = map(object({
    github_repository = string
    site_id           = string
  }))
}