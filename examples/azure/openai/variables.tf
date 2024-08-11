variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "resource_name" {
  type        = string
  description = "The name of the Azure OpenAI resource"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be created"
  default     = "swedencentral"
}

variable "sku_name" {
  type        = string
  description = "The SKU name for the Azure OpenAI account"
  default     = "S0"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the resources"
  default     = {}
}

variable "model_deployments" {
  type = list(object({
    name          = string
    model_name    = string
    model_version = string
    scale_type    = string
    capacity      = number
  }))
  description = "List of model deployments to create"
  default = [ {
    name          = "gpt-4o"
    model_name    = "gpt-4o"
    model_version = "2024-05-13"
    scale_type    = "Standard"
    capacity      = 1
  }, {
    name          = "text-embedding-3-large"
    model_name    = "text-embedding-3-large"
    model_version = "1"
    scale_type    = "Standard"
    capacity      = 1
  } ]
}