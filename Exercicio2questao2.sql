CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(20),
borda BOOLEAN,
promo_pizza BOOLEAN

);

	CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    sabor VARCHAR(100),
    tamanho char,
    preco DECIMAL(8,2),
    categoria_id BIGINT,
    
    FOREIGN KEY (categoria_id) references tb_categorias(id)
   
);

 INSERT INTO tb_categorias(tipo,borda,promo_pizza)
 VALUES ("SALGADA",FALSE,TRUE);

 INSERT INTO tb_pizzas(nome,sabor,tamanho,preco,categoria_id)
 VALUES ("Lombo Deluxe","lombo suino ao molho madeira e shimeji","G",100.00,1);
 
ALTER TABLE tb_pizzas
ADD sabor VARCHAR(100);

SELECT *FROM tb_categorias;
SELECT *FROM tb_pizzas;

DELETE FROM tb_pizzas WHERE id = 4;

SELECT preco FROM tb_pizzas where preco > 45.00;
SELECT preco FROM tb_pizzas where preco >= 45.00 or preco >= 100.00;
SELECT nome FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_categorias INNER JOIN tb_pizzas
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_categorias INNER JOIN tb_pizzas
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 1;



