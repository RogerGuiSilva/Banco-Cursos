INSERT INTO alunos (
    alun_id,name, email,curso,Periodo
) VALUES 
('Aluno2025', 'Aluno Silva' 'alunos@gmail.com'), 
('DS', 'Noturno', );


INSERT INTO cursos (
    Instituição,curso_id,Nivel,Tempo,Periodo
) VALUES (
    ('IF Capivari', 'DSNoturno' 'Tecnologo'), 
'3Anos', 'Noturno',    
);


INSERT INTO aulas (
    Materias,horario,avaliações,alun_id,prof
) VALUES (
    ('BANCO DE DADOS 1, SISTEMAS OPERACIONAIS,ESTRUTURA DE DADOS 1,PROGRAMAÇÃO ORIENTADA A OBJETOS 1,ENGENHARIA DE SOFTWARE 1, INTERAÇÃO HUMANO-COMPUTADOR', '19:00 ás 22:30' 'Provas e Trabalhos',
'aluno2025', '
Moises Francisco Olimpio Filho,
Edivaldo Serafim,Vitor Brandi Junior,
Rafael Wendel Pinheiro,
Waldo Luis de Lucca' );    
);

INSERT INTO feedback(
    feed_id,title,curso_id,alun_id
) VALUES 
('a Materia de BD é incrivel', 2), 
('Professores que Torcem para o São Paulo são os Melhores', 2);


INSERT INTO comment (
    comment_id, comment, feed_id, alun_id
) VALUES 
('o Professor Moises é muito sábio ', 2, 1), 
('Alguns alunos faltaram', 1, 1), 
(' São os Maiores do Brasil', 3, 2);

