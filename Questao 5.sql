CREATE DATABASE Inscricao;

USE Inscricao;

CREATE TABLE Cursos(
 CursoID int auto_increment primary key,
 NomeCurso varchar(255) not null,
 Professor varchar(255) not null,
 DataInicio date not null,
 DataFim date not null
);

CREATE TABLE Aluno (
 MatriculaID int auto_increment primary key,
 NomeAluno varchar(255),
 DataNascimento date,
 Endereco varchar(255),
 Telefone varchar (15)
);

CREATE TABLE Inscricoes(
 InscricaoID int auto_increment primary key,
 MatriID int,
 CurID int,
 foreign key (CurID) references Cursos(CursoID),
 foreign key (MatriID) references Aluno(MatriculaID)
);

-- Inserir Dados Curso
INSERT INTO Cursos (NomeCurso, Professor, DataInicio, DataFim) VALUES
("Mecatrônica", "Ícaro", "2021-02-01", "2022-02-01");

INSERT INTO Cursos (NomeCurso, Professor, DataInicio, DataFim) VALUES
("Eletrônica", "Carlão", "2020-02-01", "2021-02-01");

INSERT INTO Cursos (NomeCurso, Professor, DataInicio, DataFim) VALUES
("DS", "Carlos", "2019-02-01", "2020-05-02");

INSERT INTO Cursos (NomeCurso, Professor, DataInicio, DataFim) VALUES
("Medicina", "Jozefína", "2018-02-01", "2024-02-01");

INSERT INTO Cursos (NomeCurso, Professor, DataInicio, DataFim) VALUES
("Eng. Civíl", "Matheus", "2015-02-01", "2020-06-02");


-- Inserir Dados Alunos
INSERT INTO Aluno (NomeAluno, DataNascimento, Endereco, Telefone) VALUES
("Jubileu", "2012-02-20", "Praça São Cristovão, s/n", "(71)98211-1013");

INSERT INTO Aluno (NomeAluno, DataNascimento, Endereco, Telefone) VALUES
("Marcola", "2005-02-20", "Avenida 13 de Novembro 850", "(71)92361-1673");

INSERT INTO Aluno (NomeAluno, DataNascimento, Endereco, Telefone) VALUES
("Gabriel", "2002-02-20", "Avenida Geraldo Rodrigues dos Santos", "(71)98199-1213");

INSERT INTO Aluno (NomeAluno, DataNascimento, Endereco, Telefone) VALUES
("Matheus", "2001-02-20", "Rodovia GO-474 01 Quadra 47", "(71)98326-1213");

INSERT INTO Aluno (NomeAluno, DataNascimento, Endereco, Telefone) VALUES
("Vitória", "2007-02-20", "Avenida Senador Ramos Caiado", "(71)98399-1213");

-- Inscrições 

INSERT INTO Inscricoes (MatriID, CurID) VALUES
(1, 1);

INSERT INTO Inscricoes (MatriID, CurID) VALUES
(2, 2);

INSERT INTO Inscricoes (MatriID, CurID) VALUES
(3, 3);

INSERT INTO Inscricoes (MatriID, CurID) VALUES
(4, 4);

INSERT INTO Inscricoes (MatriID, CurID) VALUES
(5, 5);

-- Apagar Tabelas
SELECT * FROM Aluno;

DROP TABLE Cursos;

DROP DATABASE Inscricao;

-- Select
Select
A.NomeAluno as "Nome do Aluno",
C.NomeCurso as "Nome do Curos"
From Cursos C
Inner Join Inscricoes I on C.CursoID = I.CurID
Inner Join Aluno A on I.MatriID = A.MatriculaID;


