# ----------------------------------------------------------
# Service Accounts
# ----------------------------------------------------------

resource "google_service_account" "github_actions_sa" {
  account_id   = "github-actions-sa"
  display_name = "GitHub Actions Service Account"
  project      = var.project_id
}

# ----------------------------------------------------------
# Service Account Roles
# ----------------------------------------------------------

data "google_project" "project" {
  project_id = var.project_id
}

resource "google_project_iam_member" "firebase_hosting_admin" {
  project = var.project_id
  role    = "roles/firebasehosting.admin"
  member  = "serviceAccount:${google_service_account.github_actions_sa.email}"
}

resource "google_project_iam_member" "sa_user" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${google_service_account.github_actions_sa.email}"
}