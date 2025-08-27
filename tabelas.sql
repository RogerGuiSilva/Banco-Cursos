/* Tabela alunos */
CREATE TABLE alunos (
    alun_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    curso VARCHAR(100) NOT NULL,
    periodo VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

/* Tabela cursos */
CREATE TABLE cursos (
    curso_id SERIAL PRIMARY KEY,
     nome_curso VARCHAR(100) NOT NULL,
    nivel VARCHAR(100) NOT NULL,
    tempo VARCHAR(100) NOT NULL,
    periodo VARCHAR(100) NOT NULL
);

/* Tabela aulas */
CREATE TABLE aulas (
    aula_id SERIAL PRIMARY KEY,
    materia VARCHAR(100) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    avaliacoes VARCHAR(100) NOT NULL,
    alun_id INT REFERENCES alunos(alun_id),
    prof VARCHAR(100) NOT NULL
);

/* Tabela feedback */
CREATE TABLE feedback (
    feed_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    curso_id INT REFERENCES cursos(curso_id),
    alun_id INT REFERENCES alunos(alun_id),
    created_at TIMESTAMP DEFAULT now()
);

/* Tabela de comentários */
CREATE TABLE comment (
    comment_id SERIAL PRIMARY KEY,
    comment TEXT NOT NULL,
    feed_id INT REFERENCES feedback(feed_id),
    alun_id INT REFERENCES alunos(alun_id),
    created_at TIMESTAMP DEFAULT now()
);
