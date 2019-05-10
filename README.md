# Terraform "Ola Seu Nome"

## Introduction

Esse repositório contém os scripts do Terraform para a criação de um Servidor Web. 
Instância ec2 que executa um serviço web que responde as solicitações http. A página inicial exibe "Seu Texto".
Também, aceita variáveis para que essa página possa exibir outro nome ou frase.

## Setup

To run the terraform scripts you need to have AWS keys. The easiest way is to provide them to docker via a file containing the keys as key value pair.
Example file:
```
AWS_ACCESS_KEY_ID=...
AWS_SECRET_ACCESS_KEY=...
```

## Terraform commands

Terraform commands to manage the ECS cluster

### Initialize

terraform init

### Plan

terraform plan -out terrafom.tfvars

### Apply

terrafom apply

### Destroy

terraform destroy
