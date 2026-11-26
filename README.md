# Plataforma de Hospedagem

Projeto desenvolvido como atividade prática para aula de Banco de Dados do curso de Programação. O objetivo foi aplicar conceitos de modelagem relacional e SQL na criação de uma base de dados para uma plataforma de hospedagem.

## Tecnologias e ferramentas

- MySQL
- SQL
- MySQL Workbench

## Estrutura do projeto

- `plataforma_hospedagem.sql`: cria o banco de dados e as tabelas principais.
- `1-enderecos (1).sql`: dados de exemplo para endereços.
- `2-clientes.sql`: dados de exemplo para clientes.
- `3-proprietarios.sql`: dados de exemplo para proprietários.
- `4-hospedagens.sql`: dados de exemplo para hospedagens.
- `5-alugueis.sql`: dados de exemplo para aluguéis.
- `6-avaliacoes.sql`: dados de exemplo para avaliações.
- `esse.mwb`: modelo do banco de dados para abrir no MySQL Workbench.

## Modelo de dados

O banco possui seis entidades:

- **proprietarios**: nome, documento e contato dos responsáveis pelas hospedagens.
- **clientes**: nome, CPF e contato dos clientes.
- **enderecos**: endereço completo das propriedades.
- **hospedagens**: tipo, status, endereço e proprietário.
- **alugueis**: cliente, hospedagem, período e preço total.
- **avaliacoes**: nota e comentário de um cliente sobre uma hospedagem.

As hospedagens se relacionam a um endereço e a um proprietário. Aluguéis conectam clientes e hospedagens; avaliações conectam clientes e hospedagens.

## Como executar

1. Abra o MySQL Workbench e conecte-se a uma instância MySQL.
2. Execute `plataforma_hospedagem.sql` para criar o banco e as tabelas.
3. Carregue os arquivos de dados na ordem abaixo, para respeitar as dependências das chaves estrangeiras:

   1. `1-enderecos (1).sql`
   2. `2-clientes.sql`
   3. `3-proprietarios.sql`
   4. `4-hospedagens.sql`
   5. `5-alugueis.sql`
   6. `6-avaliacoes.sql`

Os arquivos de carga contêm instruções `INSERT` e devem ser executados depois da criação das tabelas.

## Objetivos de aprendizagem

- Criar bancos de dados e tabelas com SQL.
- Definir chaves primárias e relacionamentos com chaves estrangeiras.
- Organizar dados em entidades relacionadas.
- Inserir e consultar dados em um banco relacional.

Este repositório reúne os arquivos produzidos e utilizados durante a atividade da aula.
