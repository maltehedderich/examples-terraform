resource "azurerm_cognitive_account" "openai" {
  name                  = var.resource_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  kind                  = "OpenAI"
  sku_name              = var.sku_name

  tags = var.tags
}

resource "azurerm_cognitive_deployment" "model_deployment" {
  for_each = { for model in var.model_deployments : model.name => model }

  name                 = each.value.name
  cognitive_account_id = azurerm_cognitive_account.openai.id

  model {
    format  = "OpenAI"
    name    = each.value.model_name
    version = each.value.model_version
  }

  scale {
    type     = each.value.scale_type
    capacity = each.value.capacity
  }
}