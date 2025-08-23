/* Inserir alunos */
INSERT INTO alunos (name, email, curso, periodo) VALUES
('Aluno Silva', 'alunos@gmail.com', 'DS', 'Noturno'),
('Joao Souza', 'joao@gmail.com', 'DS', 'Noturno');

/* Inserir cursos */
INSERT INTO cursos (nome_curso, nivel, tempo, periodo) VALUES
('Desenvolvimento de Sistemas', 'Tecnologo', '3 anos', 'Noturno'),
('Engenharia de Software', 'Tecnologo', '3 anos', 'Noturno');

/* Inserir aulas */
INSERT INTO aulas (materia, horario, avaliacoes, alun_id, prof) VALUES
('Banco de Dados 1', '19:00 às 22:30', 'Provas e Trabalhos', 1, 'Moises Francisco Olimpio Filho'),
('Sistemas Operacionais', '19:00 às 22:30', 'Provas e Trabalhos', 1, 'Edivaldo Serafim');

/* Inserir feedback */
INSERT INTO feedback (title, curso_id, alun_id) VALUES
('A matéria de BD é incrível', 1, 1),
('Professores que torcem para o São Paulo são os melhores', 1, 2);

/* Inserir comentários */
INSERT INTO comment (comment, feed_id, alun_id) VALUES
('O Professor Moises é muito sábio', 1, 1),
('Alguns alunos faltaram', 1, 2),
('São os maiores do Brasil', 2, 2);
