CREATE TABLE usuarios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    perfil VARCHAR(50) NOT NULL
);

CREATE TABLE perfil (
    id int PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE perfil_usuario (
    perfil_id int REFERENCES perfil (id) ON DELETE CASCADE,
    usuario_id UUID REFERENCES usuarios (id) ON DELETE CASCADE,
    PRIMARY KEY (perfil_id, usuario_id)
);