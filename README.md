## azure_terraform_harishvanka
This repository contains Terraform configurations to deploy Azure Infrastructure, Azure Pipelines and Github Action Pipelines to run these terraform configs.

## Configuring Azure Account via Azure CLI

```md
# Get a list of subscriptions for the logged in account. (autogenerated)
az account list

# Get the details of a subscription. (autogenerated)
az account show

# Set a subscription to be the current active subscription. (autogenerated)
az account set --subscription="SUBSCRIPTION_ID"

Read more about the command in reference docs
https://docs.microsoft.com/en-US/cli/azure/account#az_account_list

az account list --query "[?user.name=='harishvanka@hotmail.com'].{Name:name, ID:id, Default:isDefault}" --output Table
```

## Export
```bash
export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
export ARM_TENANT_ID="<azure_subscription_tenant_id>"
export ARM_CLIENT_ID="<service_principal_appid>"
export ARM_CLIENT_SECRET="<service_principal_password>"
```
```powershell
$env:ARM_CLIENT_ID="<service_principal_app_id>"
$env:ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
$env:ARM_TENANT_ID="<azure_subscription_tenant_id>"
$env:ARM_CLIENT_SECRET="<service_principal_password>"
```