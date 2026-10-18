variable "subscription_id" {
  description = "ID da assinatura Azure onde o Resource Group será criado."
  type        = string
}

variable "resource_group_name" {
  description = "Nome do Azure Resource Group."
  type        = string
  default     = "rg-terraform-aula10"
}

variable "location" {
  description = "Região Azure onde o Resource Group será criado."
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags aplicadas ao Resource Group."
  type        = map(string)
  default = {
    environment = "learning"
    managed_by  = "terraform"
  }
}
