resource "google_firebase_web_app" "firehost" {
  provider = google-beta
  project  = var.project_id
  display_name = var.name
}

resource "google_firebase_hosting_site" "site" {
  for_each = var.deployments

  provider = google-beta
  project  = var.project_id
  site_id  = each.value.site_id
  app_id   = google_firebase_web_app.firehost.app_id
}