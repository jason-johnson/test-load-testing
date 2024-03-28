variable "branch" {
  description = "optional branch for use in the name"
  default = ""
}

variable "location" {
  description = "default location to use if not specified"
  default = "westeurope"  
}

variable "AZURE_DEVOPS_PAT" {
  description = "Azure DevOps Personal Access Token" 
}