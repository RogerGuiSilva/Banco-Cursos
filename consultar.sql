
/* 
   Consultar dados do aluno pela matrícula
 */

SELECT matricula, name, email, curso, semestre, periodo, created_at
FROM alunos
WHERE matricula = 'Digite a matricula';


/* 
   2️ Consultar aulas de um professor pelo nome
 */

SELECT dia, materia, hora_inicio, hora_fim, avaliacoes
FROM aulas
WHERE prof = 'Digite o nome do Professor';


/* 
   Consultar feedbacks e comentários de um aluno pela matrícula
*/

SELECT 
    f.title AS feedback_titulo,
    f.description AS feedback_descricao,
    c.comment AS comentario,
    a_c.name AS aluno_comentario
FROM feedback f
LEFT JOIN comments c ON c.feed_id = f.feed_id
LEFT JOIN alunos a_c ON c.alun_id = a_c.matricula
WHERE f.alun_id = 'Digite a Matricula';


/*
    Consulta de todos os alunos do curso de DS
*/
SELECT matricula, name, email, semestre, periodo
FROM alunos
WHERE curso = 'DS';


/* 
    Consulta de todas as aulas de um determinado dia
*/

SELECT dia, materia, hora_inicio, hora_fim, prof
FROM aulas
WHERE dia = 'digite o dia';


/* 
    Consulta de feedback e comentários de todos os alunos do curso de DS
 */
SELECT 
    f.title AS feedback_titulo,
    f.description AS feedback_descricao,
    a_f.name AS aluno_feedback,
    c.comment AS comentario,
    a_c.name AS aluno_comentario
FROM feedback f
JOIN alunos a_f ON f.alun_id = a_f.matricula
LEFT JOIN comments c ON c.feed_id = f.feed_id
LEFT JOIN alunos a_c ON c.alun_id = a_c.matricula
WHERE a_f.curso = 'DS';
