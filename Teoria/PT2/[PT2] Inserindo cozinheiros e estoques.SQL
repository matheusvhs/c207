CREATE TABLE Cozinheiros(
	id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    senha VARCHAR(45) NOT NULL
);

CREATE TABLE Ingredientes(
	id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(45) NOT NULL
);

CREATE TABLE Estoques(
	cozinheiro INT,
    ingrediente INT,
    quantidade INT,
    FOREIGN KEY (cozinheiro) REFERENCES Cozinheiros(id),
    FOREIGN KEY (ingrediente) REFERENCES Ingredientes(id)
);

INSERT INTO Cozinheiros(id,nome,email,senha) VALUES
(1, "Soebad Saliv", "contato@poisonfrit.com", "Jaca_1234"),
(2, "Poles Najos", "poles@g.com", "DnD13#"),
(3, "Sani Vosjal", "sani@g.com","Kituti67!")
;

INSERT INTO Ingredientes(id,nome) VALUES
(1, "Banana"),
(2,	"Leite"),
(3,	"Ovo"),
(4,	"Açúcar"),
(5,	"Farinha de trigo"),
(6,	 "Manteiga"),
(7,	 "Baunilha"),
(8,	 "Jaca"),
(9,	 "Barracuda"),
(10, "Sal"),
(11, "Pimenta"),
(12, "Cebola")
;

INSERT INTO Estoques(cozinheiro, ingrediente, quantidade) VALUES
(1,	5,	1854),
(1,	6,	985),
(1,	8,	1520),
(1,	9,	1652),
(1,	10,	566),
(1,	11,	362 ),
(1,	12,	512 ),
(2,	1,	124),
(2,	2,	512),
(2,	3 ,	222), 
(2,	4,	356 ),
(2, 5, 1020 ),
(2,	6,	558 ),
(3,	1,	102 ),
(3,	2,	253 ),
(3,	5,	152 ),
(3,	9,	280 )
;

SELECT 
    c.nome,
    SUM(e.quantidade)
FROM 
    Estoques e
JOIN
    Cozinheiros c on c.id = e.cozinheiro
    GROUP BY c.nome
;

