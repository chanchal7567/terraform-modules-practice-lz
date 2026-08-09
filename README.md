
# 🏗️ Terraform Modules Practice with Azure

## 📌 Project Overview

This project demonstrates the implementation of Azure infrastructure using Terraform and reusable Terraform modules.

The objective is to create a structured and reusable Infrastructure as Code (IaC) setup for deploying Azure resources.

## 🏗️ Architecture

The project uses a modular Terraform architecture where the environment configuration consumes reusable child modules.

### Infrastructure Components

- Azure Resource Groups
- Azure Virtual Networks
- Azure Subnets
- Azure Network Interfaces
- Azure Virtual Machines
- Azure Public IP Addresses
- Reusable Terraform Modules

## 🛠️ Technologies Used

- Microsoft Azure
- Terraform
- Git
- GitHub
- Azure CLI
- Infrastructure as Code (IaC)

## 📂 Project Structure

```text
terraform-modules-practice-12/
│
├── environments/
│   └── preprod/
│       ├── main.tf
│       ├── provider.tf
│       ├── terraform.tfvars
│       ├── variables.tf
│       └── .terraform.lock.hcl
│
├── modules/
│   ├── azurerm_network_interface/
│   ├── azurerm_resource_group/
│   ├── azurerm_subnet/
│   ├── azurerm_virtual_machine/
│   ├── azurerm_virtual_network/
│   └── terraform_public_ip/
│
├── .gitignore
├── LICENSE
└── README.md
