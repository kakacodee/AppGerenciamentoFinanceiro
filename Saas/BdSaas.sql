create database dbSaas;
use dbSaas;

create table Usuario(
IdUsu int primary key auto_increment not null,
Nome varchar(60) not null,
Email varchar(120) not null,
Senha varchar(100) not null,
DataCadastro datetime 
);
create table Clientes (
IdCli int primary key auto_increment not null,
Nome varchar(60) not null,
Email varchar(120) not null, 
Telefone varchar(20) not null,
Endereco varchar(150),
Anotacoes text
);
create table Produtos(
IdProduto int primary key auto_increment,
  Nome varchar(80) not null,
  Descricao varchar(120) not null,
  Preco decimal(8,2) not null,
  Quantidade int not null,
  Vendas int generated always as(Quantidade - Vendas) not null
);
create table Propostas(
IdProp int primary key auto_increment,
Titulo varchar(120) not null,
Descricao text,
Termos text not null,
Valor decimal(8,2) not null,
EmpresaProposta varchar(100) not null,
DataEnvio datetime generated always as (current_timestamp())
);
create table Movimentacao(
IdMov int primary key auto_increment,
Titulo varchar(120) not null,
Descricao text,
Valor decimal(8,2) not null,
Tipo enum('Lucro','Gasto') not null
-- Saldo decimal(8,2) generated always as (Lucros - Gastos)
);
