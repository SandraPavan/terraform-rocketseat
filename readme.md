# Projeto Terraform

Este projeto utiliza [Terraform](https://www.terraform.io/) para automatizar a infraestrutura como código (IaC). Abaixo estão as instruções para iniciar, configurar, e utilizar este projeto.

## Pré-requisitos

Antes de começar, você precisa ter as seguintes ferramentas instaladas:

- [Terraform](https://www.terraform.io/downloads.html)
- [Git](https://git-scm.com/)
- Credenciais para o provedor AWS

## Estrutura do Projeto

```
/terraform-rocketseat
│
├── /modules                 
│   ├── /cloudfront              
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── /s3             
│       ├── main.tf
│       └── variables.tf
├── main.tf                  # Arquivo principal que chama os módulos
├── variables.tf             # Definição de variáveis principais do projeto
├── outputs.tf               # Definição de outputs principais do projeto
├── provider.tf              # Definição do provedor de infraestrutura (AWS, Azure, etc.)
├── .gitignore               # Arquivos ignorados no controle de versão
└── README.md                # Documentação do projeto
```

## Configuração

### 1. Clonar o Repositório

Primeiro, clone o repositório em sua máquina local:

```bash
git clone https://github.com/SandraPavan/terraform-rocketseat.git
cd terraform-rocketseat
```

### 2. Inicializar o Terraform

Execute o seguinte comando para inicializar o Terraform e baixar os provedores necessários:

```bash
terraform init
```

### 3. Validar a Configuração

Antes de executar o plano ou aplicar as mudanças, é uma boa prática validar sua configuração para verificar se está tudo correto. Para isso, execute:

```bash
terraform validate
```

Este comando irá verificar se os arquivos estão corretos, se as sintaxes estão adequadas e se as variáveis e módulos estão corretamente configurados.

### 4. Formatar o Código

Para manter a consistência do código Terraform, utilize o comando de formatação para garantir que o estilo e a indentação estejam corretos:

```bash
terraform fmt
```

Esse comando ajusta automaticamente o estilo do código Terraform para as melhores práticas.

### 5. Executar um Plano

Antes de aplicar as mudanças, é importante revisar o que será criado ou modificado. Para isso, utilize o comando:

```bash
terraform plan
```

### 6. Aplicar as Mudanças

Para provisionar a infraestrutura conforme definido nos arquivos `.tf`, execute:

```bash
terraform apply
```

Confirme a operação digitando `yes` quando solicitado.

### 7. Destruir a Infraestrutura

Se precisar remover a infraestrutura provisionada, use o seguinte comando:

```bash
terraform destroy
```

## Boas Práticas

- Utilize o arquivo `.gitignore` para garantir que arquivos sensíveis e estados locais não sejam versionados.
- Sempre execute o `terraform plan` antes de aplicar as mudanças para evitar surpresas.
- Mantenha as variáveis sensíveis fora do repositório, usando arquivos como `terraform.tfvars` ou armazenando essas variáveis em sistemas de gerenciamento de segredos.