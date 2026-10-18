# Terraform Azure - Aula 10

Projeto de exemplo para provisionar um Azure Resource Group com Terraform.

## Pré-requisitos

- Terraform CLI (versão 1.6 ou superior)
- Azure CLI
- Uma assinatura Azure com permissão para criar Resource Groups

## Autenticação no Azure

Autentique-se localmente antes de executar o Terraform:

```powershell
az login
az account set --subscription "<ID-DA-SUBSCRIPTION>"
```

O provider AzureRM também recebe o ID da assinatura pela variável `subscription_id`.
Crie o arquivo local de variáveis a partir do exemplo e informe seus valores:

```powershell
Copy-Item terraform.tfvars.example terraform.tfvars
```

Edite `terraform.tfvars` e substitua os valores de exemplo.

## Executar

```powershell
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

Para remover os recursos criados pelo exemplo:

```powershell
terraform destroy
```

## Estrutura

- `main.tf`: declara o Azure Resource Group.
- `providers.tf`: versões do Terraform/provider e configuração do AzureRM.
- `variables.tf`: entradas configuráveis.
- `outputs.tf`: valores apresentados após o apply.
- `terraform.tfvars.example`: exemplo de configuração local; não contém credenciais.
- `.github/workflows/terraform.yml`: valida formatação e configuração em pushes e pull requests.

O workflow de CI executa `fmt`, `init` sem backend e `validate`. Ele não executa `plan` ou `apply` e não cria recursos.
Para uso em equipe ou produção, configure um backend remoto para armazenar o state com segurança.
