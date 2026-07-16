# eks-terraform-cluster

# Automação AWS + Terraform + GitHub Actions

## Objetivo do projeto

A proposta é criar um laboratorio que simplifica e automatiza a criação e a gestão da infraestrutura necessária para rodar os projetos de software.

## Fundamentos do Projeto

Para orientar o desenvolvimento, foram definidos os seguintes pontos essenciais:

+ Infraestrutura como código: o Terraform será utilizado como ferramenta principal de provisionamento.
+ Cluster Kubernetes: a criação do cluster será feita por meio do Amazon Elastic Kubernetes Service (EKS).
+ Simplicidade e reutilização com variaveis: o projeto deve ser construído de forma enxuta e facilmente reaproveitável.
+ Execução de pipeline: qualquer alteração no código Terraform na branch main deve disparar a execução da pipeline.


## Tecnologias utilizadas

+ [Amazon EKS](https://aws.amazon.com/pt/eks/) – Serviço gerenciado de Kubernetes da AWS.  
+ [Terraform](https://developer.hashicorp.com/terraform) – Ferramenta de infraestrutura como código para provisionamento e gestão.  
+ [AWS](https://aws.amazon.com/pt/) – Plataforma de nuvem utilizada para hospedar os recursos.  
+ [AWS CLI](https://docs.aws.amazon.com/cli/) – Interface de linha de comando para interação com serviços AWS.  
+ [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) – Provider oficial do Terraform para integração com a AWS.  
+ [Amazon S3](https://aws.amazon.com/pt/s3/) – Serviço de armazenamento utilizado para guardar estados e artefatos.  
+ [AWS VPC Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest) – Módulo para criação e gerenciamento de redes virtuais privadas.  
+ [AWS EKS Terraform module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest) – Módulo para provisionamento de clusters Kubernetes na AWS.  
+ [GitHub](https://github.com/) – Repositório de código e colaboração.  
+ [GitHub Actions](https://docs.github.com/actions) – Ferramenta de CI/CD para automação de pipelines.

## Configuração

As variáveis sensíveis do projeto não ficam no arquivo `terraform.tfvars`, mas sim armazenadas como **secrets** no GitHub Actions.  
Já as demais variáveis de configuração estão centralizadas no arquivo `terraform.tfvars`.

## Secrets utilizados

- **AWS_ACCESS_KEY_ID** → Chave de acesso usada para configurar o AWS CLI.  
- **AWS_SECRET_ACCESS_KEY** → Chave secreta de acesso utilizada pelo AWS CLI.  
- **AWS_BUCKET_NAME** → Nome do bucket responsável por guardar o estado do Terraform.  
- **AWS_BUCKET_FILE** → Arquivo dentro do bucket que contém o estado do projeto Terraform.


## Instruções de execução

A pipeline responsável pela criação ou atualização do ambiente é acionada automaticamente sempre que houver modificações no código Terraform do projeto na branch `main`.
