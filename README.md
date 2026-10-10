# firehost_iac

Each deployment specifies its GitHub owner, repository, and Firebase Hosting site ID:

```hcl
deployments = {
	"site_key" = {
		github_owner      = "github-owner"
		github_repository = "repository-name"
		site_id            = "firebase-site-id"
	}
}
```