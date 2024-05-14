CREATE DATABASE Professores;

USE Professores;

CREATE TABLE Professores
(
Id_Prof INT IDENTITY (1,1) not null,
Nome	VARCHAR (50) not null,
Disciplina VARCHAR (15) not null,
CONSTRAINT PK_Professores PRIMARY KEY (Id_Prof)
)

INSERT INTO Professores (Nome, Disciplina)
VALUES ('Ana Oliveira', 'Portugues')

UPDATE Professores
SET Nome='Ana Silva'
WHERE Id_Prof = '01';



INSERT INTO Professores (Nome, Disciplina)
VALUES ('Evellin Lima', 'Algoritmos'),('Gabriel Joia','Estrut de Dados'),
('Edmilson Ribeiro','Banco de Dados'), ('Joao Piveta', 'Desenvol Web'), 
('Lucas Gomes','Matematica');

INSERT INTO Professores (Nome, Disciplina)
VALUES ('Joana Silva','Filosofia'),('Carlos Ramos','Sociologia'),('Karina Souza','Ingles'),
('Luana Campos','Algebra')

DELETE FROM Professores
WHERE Id_Prof=2


CREATE TABLE Turmas
(
Id_Turmas INT IDENTITY (1,1) not null,
Nome	VARCHAR (50) not null,
ProfResp INT not null,
CONSTRAINT PK_Turmas PRIMARY KEY (Id_Turmas),
CONSTRAINT FK_Turmas FOREIGN KEY (ProfResp) REFERENCES Professores (Id_Prof)
)

INSERT INTO Turmas (Nome, ProfResp)
VALUES ('9A', 1);


INSERT INTO Turmas (Nome, ProfResp)
VALUES ('10A', 5),('4A', 3),('8A', 4),('5A', 5),('6A', 6),('7A', 7),('8A', 8),('10A', 4),('3A', 3),('1A', 7);

CREATE TABLE Alunos(
Id_Alunos INT IDENTITY(1,1) not null,
Nome VARCHAR (50) not null,
DataNasc DATE not null,
TurmaId INT  not null, 
CONSTRAINT PK_Alunos PRIMARY KEY (Id_Alunos),
CONSTRAINT FK_Alunos FOREIGN KEY (TurmaId) REFERENCES Turmas (Id_Turmas),
)

INSERT INTO Alunos (Nome, DataNasc, TurmaId)
VALUES ('Maria Souza','2005-10-15',1);

INSERT INTO Alunos (Nome, DataNasc, TurmaId)
VALUES ('Ellen Lima','2005-07-03',2),('Joao Albert','1999-07-03',3),('Lucas Silva','1996-03-18',4),
('Gabriel Rodrigues','2003-08-27',5),('Mateus Silva','1992-06-18',6),('Evellin Lima','2001-07-03',7),
('Joana Santos','2002-11-14',8),('Ana Silva','1996-05-18',9),('Pedro Matos','2001-01-03',10);

DELETE FROM Alunos
WHERE Id_Alunos=2 

CREATE TABLE Notas(
Id_Notas INT IDENTITY(1,1) not null,
AlunoId INT not null,
Disciplina VARCHAR (15) not null,
Nota DECIMAL (5,2)  not null, 
CONSTRAINT PK_Notas PRIMARY KEY (Id_Notas),
CONSTRAINT FK_Notas FOREIGN KEY (AlunoId) REFERENCES Alunos (Id_Alunos),
)

INSERT INTO Notas(AlunoId, Disciplina, Nota)
VALUES (1, 'Matematica', 8.5);

UPDATE Notas
SET Nota=9.0
WHERE Id_Notas=1; 

INSERT INTO Notas(AlunoId, Disciplina, Nota)
VALUES (3, 'Estrut de Dados', 9.3),(4, 'Desenvol Web', 10),(5, 'Filosofia', 9.3),(6, 'Algoritmos', 8.4),
(7, 'Sociologia', 6.7),(8, 'Portugues', 7.9),(9, 'Historia', 5.5),(10, 'Fisica', 8.4);


SELECT * FROM Notas
SELECT * FROM Alunos
SELECT * FROM Turmas
SELECT * FROM Professores
