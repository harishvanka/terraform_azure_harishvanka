variable "vmss_name" {
    description = "(Required) Name of Virtual Machine scale set"
    type = string
    default = ""
}

variable "resource_group_name" {
    description = "(Required) Name of resource group"
    type = string
    default = ""
}

variable "location" {
    description = "(Required) Location of resource group to be created"
    type = string
    default = ""
}

variable "sku" {
    description = "(Required) )The Virtual Machine SKU for the Scale Set, such as Standard_F2"
    type = string
    default = ""
}

variable "admin_username" {
    description = "(Required) The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created."
    type = string
    default = ""
}

variable "admin_password" {
    description = "(Required) Local admin password"
    type = string
    sensitive = ture
}

variable "image_publisher" {
    description = "value"
    type = string
    default = "Canonical"
}

variable "image_offer" {
    description = "value"
    type = string
    default = ""
}

variable "image_sku" {
    description = "value"
    type = string
    default = ""
}

variable "image_version" {
    description = "value"
    type = string
    default = ""
}

variable "owner" {
  description = "The owner of the storage account"
  type        = string
  default     = "Anirudh"
}

variable "project_name" {
  description = "The project name that this storage account belongs to"
  type        = string
  default     = "ProjectK"
}

variable "application_name" {
  description = "The application name that this storage account belongs to"
  type        = string
  default     = "app"
}

variable "business_divsion" {
  description = "Business Division"
  type        = string
  default     = "vertical"
}

variable "environment" {
  description = "Environment Ex: Dev, QA, etc."
  type = string
}

variable "storage_account_type" {
    description = "(Optional) Storage Account type for os disk and managed disk"
    type = string
    default = "Standard_LRS"
}

# Linux VM NSG Inbound ports.
variable "web_vmss_nsg_inbound_ports" {
  description = "Web VMSS NSG Inbound Ports"
  type = list(string)
  default = [22, 80, 443]
}