# Plataforma de Hospedagem

Projeto de banco de dados relacional para uma plataforma de hospedagem. O esquema organiza proprietários, clientes, endereços, hospedagens, aluguéis e avaliações, com relacionamentos definidos por chaves estrangeiras. O repositório também contém dados de exemplo e consultas SQL para explorar essas informações.

## Tecnologias

- MySQL
- SQL
- MySQL Workbench (arquivo de modelo `.mwb`)

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

Os arquivos de carga contêm instruções `INSERT` e devem ser executados depois da criação das tabelas. Os scripts usam o banco `plataforma_hospedagem` selecionado pelo script principal.

## Consultas e alterações adicionais

Os arquivos `avala.sql` e `avalalalala.sql` reúnem consultas de exercício para localizar aluguéis/reservas, encontrar registros com maior preço ou nota e consultar avaliações de hotéis com informações do proprietário e da cidade.

`avala.sql` também contém alterações de estrutura: adiciona `qnt_hospedagem` a `proprietarios` e renomeia `reserva` para `reservas`. Essas alterações parecem pertencer a uma etapa posterior do exercício. A estrutura inicial usa a tabela `alugueis`, enquanto as consultas adicionais usam `reservas`; aplique os comandos de alteração apenas se estiver seguindo essa etapa e ajuste os nomes conforme o estado atual do banco.

## Observações

- O script principal cria `alugueis`; a alteração posterior renomeia `reserva` para `reservas`, então os nomes de tabela precisam estar alinhados antes de executar as consultas adicionais.
- Os arquivos de dados usam identificadores e valores de exemplo. Revise os dados e a codificação dos arquivos ao importar, especialmente se caracteres acentuados aparecerem incorretos.
- O projeto é voltado a estudo e prática de SQL e modelagem relacional.
