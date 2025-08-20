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
    feed_id,title,curso_id,alun_id,created_at
) VALUES 
('Palmeiras ganhou ontem', 2), 
('A melhor lanchonete de Capivari é  Sandubrothers', 2);


INSERT INTO comments (
    comment, post_id, user_id
) VALUES 
('Palmeiras jogou muito bem', 2, 1), 
('Alguns alunos faltaram', 1, 1), 
('Hoje é lanche free no Sandubrothers', 3, 2);

