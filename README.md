# Atividade DevOps - CI/CD com Terraform e AWS

## 1. Objetivo

O objetivo deste projeto é implementar um pipeline de CI/CD utilizando
GitHub Actions e Terraform para provisionar recursos na AWS de forma
automatizada.

## 2. Tecnologias utilizadas

- GitHub
- GitHub Actions
- Terraform
- AWS S3
- AWS IAM

## 3. Funcionamento

O pipeline é executado automaticamente quando ocorre um push na branch
main ou quando um Pull Request é aberto para essa branch.

Durante a execução, são realizadas as seguintes etapas:

1. Download do código do repositório.
2. Configuração do Terraform.
3. Autenticação na AWS.
4. Inicialização do Terraform.
5. Verificação da formatação dos arquivos.
6. Validação da configuração.
7. Geração do plano de execução.
8. Armazenamento do plano como artefato.
9. Aplicação das alterações na AWS quando ocorre um push na main.

## 4. Infraestrutura criada

O Terraform provisiona um bucket S3 na AWS.

O bucket possui:

- Versionamento habilitado.
- Criptografia AES256.
- Bloqueio de acesso público.
- Identificação por tags.

O estado do Terraform é armazenado em um bucket S3 separado,
configurado como backend remoto.

## 5. Segurança

As credenciais da AWS são armazenadas nos GitHub Secrets e não são
incluídas diretamente nos arquivos do projeto.

O bucket criado possui bloqueio de acesso público e criptografia.

## 6. Estrutura do projeto

- terraform/: arquivos de infraestrutura.
- .github/workflows/: configuração do pipeline.
- README.md: documentação do projeto.

## 7. Resultado esperado

Após a execução bem-sucedida do pipeline, um bucket S3 será criado
automaticamente na conta AWS configurada.

O resultado da execução pode ser acompanhado pela aba Actions
do repositório GitHub.

## 8. Conclusão

A implementação demonstra como integrar ferramentas de DevOps para
automatizar o provisionamento de infraestrutura em nuvem.

Com Terraform e GitHub Actions, é possível padronizar, validar e
automatizar a criação de recursos, reduzindo atividades manuais e
facilitando o controle das alterações.
