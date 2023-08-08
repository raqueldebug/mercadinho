create database mercadinho_db

use mercadinho_db



CREATE TABLE FORNECEDOR (
    ID_FORNECEDOR INT NOT NULL AUTO_INCREMENT,
    NOME varchar(255) NOT NULL,
    CNPJ varchar(18),
    CELULAR varchar(255),
    EMAIL varchar(50),
    PRIMARY KEY (ID_FORNECEDOR)
);

CREATE TABLE PRODUTO (
    ID_PRODUTO INT NOT NULL AUTO_INCREMENT,
    NOME varchar(255) NOT NULL,
    QUANTIDADE INT,
    ID_FORNECEDOR INT,
    VALOR DECIMAL(6,2),
    DATA_VALIDADE DATE,     
    QTA_MIN_ESTOQUE INT, 
    DATA_INCLUSAO DATE,
    PRIMARY KEY (ID_PRODUTO),
    FOREIGN KEY (ID_FORNECEDOR) REFERENCES FORNECEDOR(ID_FORNECEDOR)
);

INSERT INTO FORNECEDOR (NOME, CNPJ, CELULAR, EMAIL)
VALUES ( 'AMBEV', 82453351000112, 61995220662, 'ambev@gmail.com' );

INSERT INTO FORNECEDOR ( NOME, CNPJ, CELULAR, EMAIL)
VALUES ('COCA-COLA', 66245908000173, 61995220659, 'cocacola@gmail.com' );
  
INSERT INTO PRODUTO ( NOME, QUANTIDADE, ID_FORNECEDOR, VALOR, DATA_VALIDADE, QTA_MIN_ESTOQUE, DATA_INCLUSAO)
VALUES ('Skol', 10, 1, '5.00', '2026-10-01','2', '2023-08-06');

INSERT INTO PRODUTO (NOME, QUANTIDADE, ID_FORNECEDOR, VALOR, DATA_VALIDADE, QTA_MIN_ESTOQUE, DATA_INCLUSAO)
VALUES ( 'Skol-beats', 10, 1, '10.00', '2026-10-01','2', '2023-08-06');

INSERT INTO PRODUTO (NOME, QUANTIDADE, ID_FORNECEDOR, VALOR, DATA_VALIDADE, QTA_MIN_ESTOQUE, DATA_INCLUSAO)
VALUES ( 'Ades', 10, 2, '3.00', '2026-10-01','2', '2023-08-06');

INSERT INTO PRODUTO ( NOME, QUANTIDADE, ID_FORNECEDOR, VALOR, DATA_VALIDADE, QTA_MIN_ESTOQUE, DATA_INCLUSAO)
VALUES ('Del-Valle', 10, 2, '6.00', '2026-10-01','2', '2023-08-06');


SELECT
 NOME, QUANTIDADE, ID_FORNECEDOR, VALOR, QTA_MIN_ESTOQUE,
date_format(DATA_VALIDADE, '%d/%m/%Y') AS DATA_VALIDADE, 
date_format(DATA_INCLUSAO, '%d/%m/%Y') AS DATA_INCLUSAO
FROM PRODUTO;

DELETE FROM PRODUTO 
WHERE ID_PRODUTO =9;

select * from PRODUTO  
select * from FORNECEDOR

