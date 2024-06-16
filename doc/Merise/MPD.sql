CREATE TABLE users(
    id_user VARCHAR(36) ,
    nom_user VARCHAR(50)  NOT NULL,
    certified_email_user VARCHAR(100)  NOT NULL,
    temp_email_user VARCHAR(100)  NOT NULL,
    password_user VARCHAR(100)  NOT NULL,
    salt_user VARCHAR(100)  NOT NULL,
    created_at TIMESTAMP NOT NULL,
    is_active BOOLEAN NOT NULL,
    PRIMARY KEY(id_user)
);

CREATE TABLE notes(
    id_note SERIAL,
    content_content TEXT NOT NULL,
    create_at TIMESTAMP NOT NULL,
    update_at TIMESTAMP NOT NULL,
    archived_at TIMESTAMP NOT NULL,
    status_note VARCHAR(50) ,
    previous_note INTEGER NOT NULL,
    id_user VARCHAR(36) ,
    PRIMARY KEY(id_note),
    UNIQUE(previous_note),
    FOREIGN KEY(previous_note) REFERENCES notes(id_note),
    FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE notebooks(
    id_notebook SERIAL,
    title_notebook VARCHAR(50) ,
    created_at TIMESTAMP NOT NULL,
    id_user VARCHAR(36) ,
    PRIMARY KEY(id_notebook),
    FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE admin(
    id_admin VARCHAR(36) ,
    name_admin VARCHAR(50)  NOT NULL,
    email_admin VARCHAR(100)  NOT NULL,
    password_admin VARCHAR(100)  NOT NULL,
    salt_admin VARCHAR(100)  NOT NULL,
    PRIMARY KEY(id_admin)
);

CREATE TABLE authentification_tokens(
    token VARCHAR(100) ,
    timestamp_token TIMESTAMP NOT NULL,
    id_user VARCHAR(36) ,
    PRIMARY KEY(token),
    FOREIGN KEY(id_user) REFERENCES users(id_user)
);

CREATE TABLE friendships(
    Id_friendship SERIAL,
    id_acceptor VARCHAR(36) ,
    id_requestor VARCHAR(36) ,
    PRIMARY KEY(Id_friendship),
    FOREIGN KEY(id_acceptor) REFERENCES users(id_user),
    FOREIGN KEY(id_requestor) REFERENCES users(id_user)
);

CREATE TABLE share(
    id_user VARCHAR(36) ,
    id_note INTEGER,
    write_rule BOOLEAN,
    PRIMARY KEY(id_user, id_note),
    FOREIGN KEY(id_user) REFERENCES users(id_user),
    FOREIGN KEY(id_note) REFERENCES notes(id_note)
);

CREATE TABLE contain(
    id_note INTEGER,
    id_notebook INTEGER,
    PRIMARY KEY(id_note, id_notebook),
    FOREIGN KEY(id_note) REFERENCES notes(id_note),
    FOREIGN KEY(id_notebook) REFERENCES notebooks(id_notebook)
);
