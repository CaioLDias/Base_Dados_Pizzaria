-- criando tabela pizza --
create table Pizza(
  id int PRIMARY key,
  sabor varchar(60) not NULL,
  preco int not NULL,
  descricao varchar(100) NOT NULL,
  tamanho varchar(10) not NULL,
  embalagem varchar(60) not NULL,
  material_embalagem varchar(60) not NULL,
  tamanho_embalagem varchar(10) not NULL,
  preco_embalagem int not NULL
);

-- criando tabela receita --
create table Receita(
  id int PRIMARY KEY,
  instrucoes varchar(200),
  autor varchar(60) not NULL,
  pizza_id int,
  
  FOREIGN KEY(pizza_id) REFERENCES Pizza(id)
);

-- criando tabela pizzaiolo --
create table Pizzaiolo(
  id int PRIMARY KEY,
  nome varchar(60) not NULL,
  salario int not NULL
);

-- criando tabela adicional para relacionar pizza a pizzaiolo --
CREATE TABLE Atribuicao_Pizzaiolo_Pizza (
  id int PRIMARY KEY,
  pizzaiolo_id int,
  pizza_id int,
  FOREIGN KEY(pizzaiolo_id) REFERENCES Pizzaiolo(id),
  FOREIGN KEY(pizza_id) REFERENCES Pizza(id)
);


-- inserindo valores na tabela pizza --
insert into Pizza values
	(1, 'Margherita', 2000, 'Tradicional Italiana', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(2, 'Pepperoni', 2200, 'Boa demais', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(3, 'Frango com Catupiry', 2400, 'Delicia', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(4, 'Calabresa', 2100, 'Favorita do chefe', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(5, 'Quatro Queijos', 2300, 'Muito queijo', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(6, 'Vegetariana', 2400, 'A natureba', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(7, 'Portuguesa', 2300, 'Clássica', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(8, 'Mexicana', 2500, 'Para os fortes', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(9, 'Baiana', 2400, 'Calabresa apimentada pra caramba', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(10, 'Mussarela', 1900, 'Queijo, e só', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(11, 'Margherita Light', 2100, 'Tradicional diferenciada', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(12, 'Bacon com Milho', 2200, 'Bacon e milho, apenas', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(13, 'Atum', 2300, 'Aaaaaa tummm', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(14, 'Rúcula com Tomate Seco', 2500, 'Para os amantes', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(15, 'Brócolis com Catupiry', 2400, 'Perfeita', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(16, 'Frango com Cheddar', 2400, 'Super cremosa', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(17, 'Lombo com Abacaxi', 2300, 'Para quem gosta de um mix de sabores', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(18, 'Camarão', 2800, 'Boa pra praia', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(19, 'Chocolate com Morango', 2600, 'Doce gostoso', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(20, 'Banana com Canela', 2500, 'Bem cremosa', 'Grande', 'Caixa de papelão', 'Papelão', '40x40cm', 120),
	(21, 'Romeu e Julieta', 2400, 'Clássica doce', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(22, 'Brigadeiro', 2500, 'Apenas chocolate', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(23, 'Prestígio', 2600, 'Chocolate com coco, top', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(24, 'Doce de Leite com Amendoim', 2600, 'Docinha', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(25, 'Abacaxi com Canela', 2400, 'Clássica pos churras', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(26, 'Morango com Nutella', 2700, 'A doce perfeita', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(27, 'Maracujá com Chocolate Branco', 2700, 'Pra se acalmar', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(28, 'Limão com Merengue', 2800, 'Limãozinha, humm', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(29, 'Doce de Leite com Figo', 2700, 'Diferenciada', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100),
	(30, 'Nutella com Banana', 2800, 'Deliciosamente cremosa', 'Média', 'Caixa de papelão', 'Papelão', '30x30cm', 100);

-- inserindo valores na tabela receita --
insert into Receita Values
	(1, 'Molho de tomate, mussarela e manjericão fresco', 'Chef Pizza', 1),
	(2, 'Molho de tomate, pepperoni e queijo', 'Chef Pizza', 2),
	(3, 'Molho de tomate, frango desfiado e catupiry', 'Chef Pizza', 3),
	(4, 'Molho de tomate, calabresa e cebola', 'Chef Pizza', 4),
	(5, 'Molho de tomate, mussarela, provolone, parmesão e gorgonzola', 'Chef Pizza', 5),
	(6, 'Molho de tomate, pimentão, cebola, champignon, azeitona e tomate', 'Chef Pizza', 6),
	(7, 'Molho de tomate, presunto, mussarela, ovos, cebola e azeitona', 'Chef Pizza', 7),
	(8, 'Molho de tomate, carne moída, pimentão, cebola, milho e pimenta', 'Chef Pizza', 8),
	(9, 'Molho de tomate, calabresa, pimenta dedo-de-moça, cebola, pimentão e azeitona', 'Chef Pizza', 9),
	(10, 'Molho de tomate e mussarela', 'Chef Pizza', 10),
	(11, 'Molho de tomate, mussarela de búfala, tomate e manjericão fresco', 'Chef Pizza', 11),
	(12, 'Molho de tomate, bacon, milho e mussarela', 'Chef Pizza', 12),
	(13, 'Molho de tomate, atum, cebola e azeitona', 'Chef Pizza', 13),
	(14, 'Molho de tomate, mussarela, rúcula e tomate seco', 'Chef Pizza', 14),
	(15, 'Molho de tomate, brócolis, catupiry e mussarela', 'Chef Pizza', 15),
	(16, 'Molho de tomate, frango desfiado, cheddar e milho', 'Chef Pizza', 16),
	(17, 'Molho de tomate, lombo, abacaxi, cebola e mussarela', 'Chef Pizza', 17),
	(18, 'Molho de tomate, camarão, mussarela e azeitona', 'Chef Pizza', 18),
	(19, 'Chocolate, morango e leite condensado', 'Chef Sobremesas', 19),
	(20, 'Banana, canela e leite condensado', 'Chef Sobremesas', 20),
	(21, 'Mussarela e goiabada', 'Chef Sobremesas', 21),
	(22, 'Chocolate, brigadeiro e granulado', 'Chef Sobremesas', 22),
	(23, 'Chocolate, coco e leite condensado', 'Chef Sobremesas', 23),
	(24, 'Doce de leite e amendoim', 'Chef Sobremesas', 24),
	(25, 'Abacaxi, canela e leite condensado', 'Chef Sobremesas', 25),
	(26, 'Morango e Nutella', 'Chef Sobremesas', 26),
	(27, 'Maracujá e chocolate branco', 'Chef Sobremesas', 27),
	(28, 'Limão e merengue', 'Chef Sobremesas', 28),
	(29, 'Doce de leite e figo', 'Chef Sobremesas', 29),
	(30, 'Nutella e morango', 'Chef Sobremesas', 30);

-- inserindo valores na tabela pizzaiolo --
insert into Pizzaiolo Values
	(1, 'Luiz', 2500),
	(2, 'Maria', 2400),
	(3, 'Carlos', 2600),
	(4, 'Ana', 2300),
	(5, 'João', 2700),
	(6, 'Mariana', 2600),
	(7, 'Pedro', 2800),
	(8, 'Juliana', 2500),
	(9, 'Lucas', 2700),
	(10, 'Larissa', 2600),
	(11, 'Gabriel', 2400),
	(12, 'Amanda', 2700),
	(13, 'Diego', 2600),
	(14, 'Isabela', 2500),
	(15, 'Fernando', 2800),
	(16, 'Luana', 2600),
	(17, 'Rafael', 2400),
	(18, 'Carolina', 2700),
	(19, 'Gustavo', 2600),
	(20, 'Leticia', 2500),
	(21, 'Marcos', 2700),
	(22, 'Patricia', 2600),
	(23, 'Felipe', 2400),
	(24, 'Camila', 2700),
	(25, 'Thiago', 2600),
	(26, 'Vanessa', 2500),
	(27, 'Marcelo', 2800),
	(28, 'Natália', 2600),
	(29, 'Rodrigo', 2400),
	(30, 'Bruna', 2700)

-- inserindo na tabela adicional a relacao entre pizza e pizzaiolo --
INSERT INTO Atribuicao_Pizzaiolo_Pizza (id, pizzaiolo_id, pizza_id) VALUES
	(1, 1, 1), -- Margherita
	(2, 1, 2), -- Pepperoni
	(3, 1, 3), -- Frango com Catupiry
	(4, 2, 4), -- Calabresa
	(5, 2, 5), -- Quatro Queijos
	(6, 2, 6), -- Vegetariana
	(7, 3, 7), -- Portuguesa
	(8, 3, 8), -- Mexicana
	(9, 3, 9), -- Baiana
    (10, 4, 10), -- Mussarela
	(11, 4, 11), -- Margherita Light
	(12, 4, 12), -- Bacon com Milho
    (13, 5, 13), -- Atum
	(14, 5, 14), -- Rúcula com Tomate Seco
	(15, 5, 15), -- Brócolis com Catupiry
    (16, 6, 16), -- Frango com Cheddar
	(17, 6, 17), -- Lombo com Abacaxi
	(18, 6, 18), -- Camarão
    (19, 7, 19), -- Chocolate com Morango
	(20, 7, 20), -- Banana com Canela
	(21, 7, 21), -- Romeu e Julieta
    (22, 8, 22), -- Brigadeiro
	(23, 8, 23), -- Prestígio
	(24, 8, 24), -- Doce de Leite com Amendoim
    (25, 9, 25), -- Abacaxi com Canela
	(26, 9, 26), -- Morango com Nutella
	(27, 9, 27), -- Maracujá com Chocolate Branco
    (28, 10, 28), -- Limão com Merengue
	(29, 10, 29), -- Doce de Leite com Figo
	(30, 10, 30) -- Nutella com Morango
    
    
-- Crie um relatorio com todas as pizzas e os pizzaiolos aptos a produzi-las --
SELECT 
    p.sabor AS Sabor_da_Pizza,
    pz.nome AS Nome_do_Pizzaiolo
FROM 
    pizza p
INNER JOIN 
    atribuicao_pizzaiolo_pizza app ON p.id = app.pizza_id
INNER JOIN 
    pizzaiolo pz ON app.pizzaiolo_id = pz.id;

-- Crie um relatorio com todas as pizzas e seus ingredientes --
select sabor, instrucoes from pizza inner join receita on pizza.id = receita.pizza_id;

-- Crie um relatorio com os sabores de todas as pizzas, o nome dos pizzaiolos que as fazem e as instruçoes para produzi-las --
SELECT 
    p.sabor AS Sabor_da_Pizza,
    r.instrucoes AS Instrucoes_da_Receita,
    pz.nome AS Nome_do_Pizzaiolo
FROM 
    pizza p
INNER JOIN 
    receita r ON p.id = r.pizza_id
INNER JOIN 
    atribuicao_pizzaiolo_pizza app ON p.id = app.pizza_id
INNER JOIN 
    pizzaiolo pz ON app.pizzaiolo_id = pz.id;
