data "azuredevops_project" "main" {
  name = "Test Load Testing"
}

resource "azuredevops_environment" "main" {
  project_id = data.azuredevops_project.main.id
  name       = "Test Environment"
}