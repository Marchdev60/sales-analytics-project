CREATE DATABASE sales_analytics;

USE sales_analytics;

SHOW DATABASES;

CREATE table clientes (
   id_cliente INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(100) NOT NULL,
   email VARCHAR(150),
   cidade VARCHAR(100),
   estado CHAR(2),
   data_cadastro DATE
);
   SHOW TABLES;
   
   DESCRIBE CLIENTES;
   
   CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

    SHOW TABLES;
    
    describe clientes;
    
    describe categorias;
    
    CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(150) NOT NULL,
    id_categoria INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

    CREATE TABLE vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_vendedor VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    data_admissao DATE
);

    CREATE TABLE lojas (
      id_loja INT AUTO_INCREMENT PRIMARY KEY,
      nome_loja VARCHAR(100) NOT NULL,
      cidade VARCHAR(100) NOT NULL,
      estado CHAR(2) NOT NULL,
      regiao VARCHAR(50) NOT NULL
);

     USE sales_analytics;

CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_loja INT NOT NULL,
    data_venda DATE NOT NULL,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    desconto DECIMAL(10,2) DEFAULT 0,
    valor_total DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    FOREIGN KEY (id_produto)
        REFERENCES produtos(id_produto),

    FOREIGN KEY (id_vendedor)
        REFERENCES vendedores(id_vendedor),

    FOREIGN KEY (id_loja)
        REFERENCES lojas(id_loja)
);


    INSERT INTO categorias (nome_categoria, descricao)
	VALUES
    
     