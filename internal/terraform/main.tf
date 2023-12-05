data "harness_platform_organization" "default" {
  identifier = "default"
}

data "harness_platform_project" "Testim" {
  identifier = "Testim"
  org_id     = data.harness_platform_organization.default.id
}
