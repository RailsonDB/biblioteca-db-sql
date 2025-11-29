# 📚 Projeto Biblioteca - SQL

## 📌 Resumo do Projeto

Este projeto foi desenvolvido com o objetivo de praticar conceitos fundamentais de <br>
**banco de dados relacionais usando MySQL.** <br>
A ideia principal do projeto é simular um pequeno sistema de funcionamento de uma <br>
biblioteca, permitindo cadastro de livros e o controle de empréstimos feitos por usuários. <br>
Com esse projeto, treinei: <br>
- Criação e estruturação de tabelas.<br>
- Definição de chaves primárias e estrangeiras.<br>
- Relacionamento entre tabelas.<br>
- Escrita de consultas SQL básicas e intermediárias.<br>

## 📁 Estrutura do projeto

- *Banco-de-Dados* -> Script de criação das tabelas
- *Consultas-SQL* -> Queries de análise
- *Perguntas-de-Caso* -> Perguntas de negócio


## 🎯 Objetivo do projeto

Simular um sistema de biblioteca para praticar:
- Relacionamentos entre tabelas
- Consultas com JOIN
- Filtros com WHERE
- Agrupamentos com GROUP BY


## 🛠️ Tecnlogias utilizadas

- MySQL
- SQL


## 📷 Preview do Projeto

![Projeto biblioteca db](https://github.com/user-attachments/assets/147402e8-c590-44f0-816d-154e275639c8)

## ▶️ Como usar este projeto no MySQL

Faça o download do script localizado na pasta **banco-de-Dados** deste repositório.<br>
Em seguida, importe o arquivo no MySQL Workbench (ou outro gerenciador MySQL) e <br>
execute o scrip para selecionar o banco de dados e as tabelas do projeto.<br>

```sql
USE biblioteca_db;

SELECT * FROM livros;
SELECT * FROM emprestimos;
```

Após a execução, o ambiente estará pronto para uso.

