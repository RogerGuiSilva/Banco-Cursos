/*Tabela alunos*/
CREATE TABLE alunos (
    alun_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    curso VARCHAR(100) NOT NULL UNIQUE,
    Periodo VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT now()
    );


/*Tabela cursos*/
CREATE TABLE cursos (
    Instituição SERIAL PRIMARY KEY,
     curso_id VARCHAR(100) NOT NULL,
    Nivel VARCHAR(100) NOT NULL,
    Tempo VARCHAR(100) NOT NULL,
    Periodo VARCHAR(100) NOT NULL,
     Materia VARCHAR(100) NOT NULL,

 
);

/*tabela feedback*/
CREATE TABLE feedback (
    feed_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
     curso_id INT REFERENCES cursos(curso_id),
    created_at TIMESTAMP DEFAULT now(),
    alun_id INT REFERENCES alunos (alun_id)
);

/*tabela de comentarios*/
CREATE TABLE comment (
    comment_id SERIAL PRIMARY KEY,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    feed_id INT REFERENCES feedback(feed_id),
    alun_id INT REFERENCES alunos(alun_id)
);