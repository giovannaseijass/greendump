create database greendump;
use greendump;

create table curso(
cursoid int auto_increment not null unique,
tecnico varchar (100) not null,
primary key (cursoid)) engine=innodb;

desc curso;

create table turma(
turmaid int auto_increment not null unique,
turmas int not null,
primary key (turmaid)) engine=innodb;

desc turma;

create table aluno(
id int auto_increment not null unique,
rm varchar(10) not null,
nome varchar(100) not null,
idcurso int not null,
idturma int not null,
FOREIGN  KEY (idturma) REFERENCES turma (turmaid),
FOREIGN  KEY (idcurso) REFERENCES curso (cursoid),
primary key (id)) engine=innodb;  

CREATE INDEX idx_rm ON aluno(rm);

desc aluno;  

create table coleta(
idcoleta int auto_increment not null unique,
alunorm varchar(10) not null,
pilha2 int,
pilha3 int,
datacoleta date,
FOREIGN  KEY (alunorm) REFERENCES aluno (rm),
primary key(idcoleta)) engine=innodb;

desc coleta;

insert into curso (tecnico) VALUES ('MTEC Administração');
insert into curso (tecnico) VALUES ('MTEC Desenvolvimento de Sistemas');
insert into curso (tecnico) VALUES ('MTEC Química');
insert into curso (tecnico) VALUES ('Técnico em Enfermagem');

insert into turma (turmas) VALUES (1);
insert into turma (turmas) VALUES (2);
insert into turma (turmas) VALUES (3);

insert into aluno (rm, nome, idcurso, idturma) VALUES ('22678', 'Thamires Parreira Ribeiro', 2, 3);

INSERT INTO coleta (alunorm, pilha2, pilha3) VALUES ('22678', 5, 3);

insert into aluno value (null, '22700', 'Giovanna Anciloto Garcia Seijas', 2, 3);
insert into aluno value (null, '22825', 'Juan da Silva Pinho', 2, 3);
insert into aluno value (null, '22677', 'Vinicius Silva de Souza', 2, 3);
insert into aluno value (null, '22853', 'Giovana Silvino Koren', 2, 3);
insert into aluno value (null, '22845', 'Guilherme Fernandes Oliveira', 2, 3);
insert into aluno value (null, '22702', 'Mariana Vitoria Das Neves Guedes Anselmo', 2, 3); 
insert into aluno value (null, '22692', 'Maria Eduarda Teixeira da Silva', 2, 3); 
insert into aluno value (null, '22708', 'Clara Machado Barsaque', 2, 3); 
insert into aluno value (null, '22839', 'Caio samuel de Souza Lozano', 2,3); 
insert into aluno value (null, '22699', 'Igor Furtado de Araujo Cordeiro', 2, 3); 
insert into aluno value (null, '22594', 'Murilo Rossi de Araújo', 2, 3);
insert into aluno value (null, '22687', 'Matheus Alves Silva', 2, 3);  
insert into aluno value (null, '22817', 'Eloah Souza Rocha', 2, 3);
insert into aluno value (null, '22686', 'João Guilherme Marques de Paula', 2, 3); 
insert into aluno value (null, '22696', 'Samuel da Costa Silva', 2, 3);  
insert into aluno value (null, '22698', 'Eloá Vitória da Silva Souza', 2, 3); 
insert into aluno value (null, '22690', 'Lizandra Tiemi Abe Da Silva', 2, 3); 
insert into aluno value (null, '22697', 'Sarah Olivia Felicio Paiva', 2, 3);  
insert into aluno value (null, '22840', 'Eduarda dos Santos Inácio', 2, 3);  
insert into aluno value (null, '22688', 'Yasmin Martins Ramalho', 2, 3);  
insert into aluno value (null, '22862', 'Alice Ferreira da Silva', 2, 3);  
insert into aluno value (null, '22818', 'Emilly Silva De Paula', 2, 3);  
insert into aluno value (null, '22683', 'Edgar de Souza Pereira', 2, 3); 
insert into aluno value (null, '22680', 'Henrique Sousa Carvalho', 2, 3);  
insert into aluno value (null, '22703', 'Davi Gonçalves Mota', 2, 3);  
insert into aluno value (null, '22695', 'Homero Brescancin dos Passos', 2, 3);  
insert into aluno value (null, '22704', 'Kauan José Fatoretto Teixeira0', 2, 3);  
insert into aluno value (null, '22693', 'Maurício Luduvico Risso', 2, 3);  
insert into aluno value (null, '22705', 'Miguel Augusto Barbosa Santos Nascimento', 2, 3);  
insert into aluno value (null, '22676', 'Heitor Rodrigues da Silva', 2, 3);  