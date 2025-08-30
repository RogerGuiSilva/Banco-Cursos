/* Tabela cursos */
CREATE TABLE cursos (
    curso_id SERIAL PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    nivel VARCHAR(100) NOT NULL,
    tempo VARCHAR(100) NOT NULL,
    periodo VARCHAR(100) NOT NULL
);

/* Tabela alunos */
CREATE TABLE alunos (
    matricula VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    curso VARCHAR(100) NOT NULL,
    semestre VARCHAR(100) NOT NULL,
    periodo VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

/* Tabela aulas */
CREATE TABLE aulas (
    aula_id SERIAL PRIMARY KEY,
    dia VARCHAR(20) NOT NULL,
    materia VARCHAR(100) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    avaliacoes VARCHAR(100) NOT NULL,
    alun_id VARCHAR(20) REFERENCES alunos(matricula),
    prof VARCHAR(100) NOT NULL
);

/* Tabela feedback */
CREATE TABLE feedback (
    feed_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    curso_id INT REFERENCES cursos(curso_id),
    alun_id VARCHAR(20) REFERENCES alunos(matricula),
    created_at TIMESTAMP DEFAULT now()
);

/* Tabela de comentários */
CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    comment TEXT NOT NULL,
    feed_id INT REFERENCES feedback(feed_id),
    alun_id VARCHAR(20) REFERENCES alunos(matricula),
    created_at TIMESTAMP DEFAULT now()
);
