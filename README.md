# Terraform S3 + EC2 com LocalStack 🚀

Projecto de Infrastructure as Code (IaC) usando
Terraform para provisionar recursos AWS simulados
com LocalStack.

##  Tecnologias

- Terraform v1.15.4
- LocalStack
- AWS CLI
- Docker

##  Recursos Criados

- **S3 Bucket** → armazenamento de ficheiros
- **S3 Object** → ficheiro dentro do bucket
- **EC2 Instance** → servidor virtual t2.micro

##  Como usar

### Pré-requisitos
- Terraform instalado
- Docker instalado
- LocalStack rodando

### Iniciar o LocalStack
```bash
localstack start
```

### Iniciar o Terraform
```bash
terraform init
```

### Ver o plano
```bash
terraform plan
```

### Aplicar
```bash
terraform apply
```

### Destruir
```bash
terraform destroy
```

## Outputs

| Output | Descrição |
|--------|-----------|
| `instance_id` | ID da instância EC2 |
| `ip_publico` | IP público da instância |

##  Estrutura
terraform-s3-ec2/
├── main.tf          → recursos principais
├── provider.tf      → configuração AWS
├── variables.tf     → variáveis
├── outputs.tf       → outputs
└── .gitignore       → ficheiros ignorados

## ⚠️ Notas

- Este projecto usa LocalStack para simular a AWS
- Para usar na AWS real — remove os endpoints do provider
- Nunca commites o `.terraform/` ou `terraform.tfstate`

## Autor

**Alfredo Capitia**
Frontend Developer | DevOps
Luanda, Angola 

[![GitHub](https://img.shields.io/badge/-GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Alfredo-capitia)
