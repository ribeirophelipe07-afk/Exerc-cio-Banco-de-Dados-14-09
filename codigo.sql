-- Tabela de Fornecedores
CREATE TABLE Fornecedor (
    ID_Fornecedor NUMBER PRIMARY KEY,
    Nome VARCHAR2(100),
    Tipo_Material VARCHAR2(50),
    Contato VARCHAR2(100),
    Telefone VARCHAR2(20),
    Endereco VARCHAR2(150)
);

-- Tabela de Matérias-Primas
CREATE TABLE MateriaPrima (
    ID_MateriaPrima NUMBER PRIMARY KEY,
    Nome VARCHAR2(50),
    Unidade_Medida VARCHAR2(10),
    Tipo VARCHAR2(50)
);

-- Tabela de Receitas
CREATE TABLE Receita (
    ID_Receita NUMBER PRIMARY KEY,
    Tipo_Concreto VARCHAR2(50),
    Descricao CLOB
);

-- Tabela de associação Receita-MatériaPrima (N:M)
CREATE TABLE Receita_MateriaPrima (
    ID_Receita NUMBER,
    ID_MateriaPrima NUMBER,
    Quantidade NUMBER(10,2)
);

-- Tabela de Lotes
CREATE TABLE Lote (
    ID_Lote NUMBER PRIMARY KEY,
    Data_Producao DATE,
    Quantidade_Toneladas NUMBER(10,2),
    Status VARCHAR2(20),
    ID_Receita NUMBER
);

-- Tabela de Funcionários
CREATE TABLE Funcionario (
    ID_Funcionario NUMBER PRIMARY KEY,
    Nome VARCHAR2(100),
    Cargo VARCHAR2(50),
    Telefone VARCHAR2(20),
    Turno VARCHAR2(20)
);

-- Tabela de associação Lote-Funcionário (N:M)
CREATE TABLE Lote_Funcionario (
    ID_Lote NUMBER,
    ID_Funcionario NUMBER,
    Funcao VARCHAR2(50)
);

-- Tabela de Clientes
CREATE TABLE Cliente (
    ID_Cliente NUMBER PRIMARY KEY,
    Nome VARCHAR2(100),
    Tipo_Cliente VARCHAR2(50),
    Contato VARCHAR2(100),
    Telefone VARCHAR2(20),
    Endereco VARCHAR2(150)
);

-- Tabela de Veículos
CREATE TABLE Veiculo (
    ID_Veiculo NUMBER PRIMARY KEY,
    Placa VARCHAR2(20),
    Modelo VARCHAR2(50),
    Capacidade_Toneladas NUMBER(10,2)
);

-- Tabela de associação Lote-Veículo (N:M)
CREATE TABLE Lote_Veiculo (
    ID_Lote NUMBER,
    ID_Veiculo NUMBER,
    Data_Entrega DATE,
    Quantidade_Transportada NUMBER(10,2)
);
