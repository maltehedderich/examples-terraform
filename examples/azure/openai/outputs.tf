output "openai_endpoint" {
  value       = azurerm_cognitive_account.openai.endpoint
  description = "The endpoint URL for the Azure OpenAI account"
}

output "openai_primary_key" {
  value       = azurerm_cognitive_account.openai.primary_access_key
  description = "The primary access key for the Azure OpenAI account"
  sensitive   = true
}

output "openai_secondary_key" {
  value       = azurerm_cognitive_account.openai.secondary_access_key
  description = "The secondary access key for the Azure OpenAI account"
  sensitive   = true
}

output "model_deployments" {
  value = { for deployment in azurerm_cognitive_deployment.model_deployment : deployment.name => {
    id   = deployment.id
    name = deployment.name
  } }
  description = "A map of deployed models with their IDs and names"
}