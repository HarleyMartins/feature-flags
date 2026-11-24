CREATE TABLE projects (
    id          BIGSERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(255),
    created_at  TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE feature_flags(
    id          BIGSERIAL PRIMARY KEY,
    project_id  BIGINT NOT NULL REFERENCES projects (id), --toda flag pertence a um projeto, o banco garante isso
    flag_key    VARCHAR(100) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    creeated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    CONSTRAINT  uk_flag_key_por_projeto UNIQUE (project_id, flag_key) -- a mesma flag_key pode existir em projetos diferentes
                                                                      -- mas não repetida dentro do mesmo projeto.
);