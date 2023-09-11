resource "github_repository" "globo" {
  name = "globo-tf-deep-dive"
  visibility = "public"
  auto_init = true
}

resource "github_branch" "main" {
  repository = github_repository.globo.name
  branch = "main"
}

resource "github_branch_default" "main" {
  repository = github_repository.globo.name
  branch = github_branch.main.branch
}
