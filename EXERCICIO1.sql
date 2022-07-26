CREATE DATABASE db_RH_empresa;
USE db_RH_empresa;

CREATE TABLE tb_COLAB_empresa(
id  BIGINT  AUTO_INCREMENT PRIMARY KEY,
nome_colaborador VARCHAR(30),
email_colaborador VARCHAR(20),
telefone_colaborador VARCHAR(20),
data_contrato_colaborador DATE


);

INSERT INTO tb_COLAB_empresa ( nome_colaborador,email_colaborador,telefone_colaborador,data_contrato_colaborador)
VALUES ("Maria Helena","maria@empresa.com","8185472492","2012-02-01");

ALTER TABLE tb_COLAB_empresa  DROP COLUMN salario;

ALTER TABLE tb_COLAB_empresa ADD salario DECIMAL(6,3);
UPDATE tb_COLAB_empresa SET salario = 3.500 WHERE id =1;

SELECT * FROM tb_COLAB_empresa;

INSERT INTO tb_COLAB_empresa ( nome_colaborador,email_colaborador,telefone_colaborador,data_contrato_colaborador,salario)
VALUES ("Maria José","maria2@empresa.com","8196521402","2015-09-10",2.200);

INSERT INTO tb_COLAB_empresa ( nome_colaborador,email_colaborador,telefone_colaborador,data_contrato_colaborador,salario)
VALUES ("Maria Joana","maria3@empresa.com","81902135478","2011-12-05",4.500);

INSERT INTO tb_COLAB_empresa ( nome_colaborador,email_colaborador,telefone_colaborador,data_contrato_colaborador,salario)
VALUES ("Maria Cristina","maria4@empresa.com","8193014755","2021-03-10",1.100);

SELECT * FROM tb_COLAB_empresa;

DELETE FROM tb_COLAB_empresa WHERE id=2;

SELECT * FROM tb_COLAB_empresa WHERE salario <2.000;
SELECT * FROM tb_COLAB_empresa WHERE salario >2.000;











