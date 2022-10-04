CREATE DATABASE IF NOT EXISTS Consulta;
Use Consulta;

CREATE TABLE login (
	id_login			INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Usuario				VARCHAR(60) NOT NULL,
    Senha				VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_login)
);

CREATE TABLE cliente (
	id_cliente			INT UNSIGNED NOT NULL AUTO_INCREMENT,
	Nome				VARCHAR(80) NOT NULL,
    Bairro				VARCHAR(140) NOT NULL,
    Nascimento			VARCHAR(10) NOT NULL,
	PRIMARY KEY(id_cliente)
);


INSERT INTO login(Usuario, Senha) VALUES
('Usuario', '123');

INSERT INTO cliente(Nome, Bairro, Nascimento) VALUES
('João', 'São José', '2004-06-20'),
('Andressa', 'São José II', '2003-03-05'),
('Abigail', 'Sonho Nosso', '2000-07-23'),
('Ana', 'Anturnês', '2006-02-08'),
('Kauan', 'São Pedro', '2004-06-25'),
('Thomas Pais', 'Jardim das Rosas', '15-08-1963'),
('Rafael Theo Anthony Viana', 'COHAB', '06-05-1988'),
('Lúcia Alícia Barbosa', 'Loteamento Alphaville Campinas', '20-07-1976'),
('Marli Antônia Lopes', 'Avenida Contorno Norte', '25-02-1967'),
('Jorge Pedro', 'Rua Mercúrio', '15-12-2003'),
('Bryan Paulo', 'Rua 134', '15-12-2001'),
('Otávio Nunes', 'Rua 127', '15-06-1998');
    
    
    
    
    
    