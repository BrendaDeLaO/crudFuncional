create database consultation;
use consultation;

CREATE TABLE user (
    id_user int AUTO_INCREMENT NOT NULL COMMENT 'El identificador único de cada usuario',
    name varchar(50) NOT NULL COMMENT 'El nombre ingresado por el usuario',
    last_name varchar(100) NOT NULL COMMENT 'El apellido ingresado por el usuario',
    email  varchar(100) NOT NULL COMMENT 'El correo electrónico del usuario',
    phone_number char(9) NULL COMMENT 'El numero telefónico del usuario',
    reason varchar(300) NOT NULL COMMENT 'La pregunta o comentario que deja el usuario',
    verification char(1) NOT NULL COMMENT '(1) para marcado || (0) para no marcado',
    date timestamp NOT NULL COMMENT 'La fecha en la que fue registrada la consulta',
    state char(1) NOT NULL COMMENT '(R) para respondido || (P) para pendiente || (R) para rechazado',
    CONSTRAINT user_pk PRIMARY KEY (id_user)
);

INSERT INTO user (name, last_name, email, phone_number, reason, verification, date, state) VALUES
('Carlos', 'Mendez', 'carlos.mendez@gmail.com', '123456789', 'Quiero saber más sobre sus servicios', '1', '2024-10-19 09:30:00', 'P'),
('Lucia', 'Rios', 'lucia.rios@gmail.com', '987654321', '¿Cómo puedo contactarlos?', '0', '2024-10-19 10:15:00', 'R'),
('Juan', 'Fernandez', 'juan.fernandez@gmail.com', '654987321', 'Me gustaría recibir una cotización', '1', '2024-10-19 11:00:00', 'P'),
('Ana', 'Gomez', 'ana.gomez@gmail.com', '321789654', '¿Tienen soporte técnico?', '1', '2024-10-19 11:45:00', 'P'),
('Miguel', 'Vega', 'miguel.vega@gmail.com', '456123789', 'Estoy interesado en sus productos', '0', '2024-10-19 12:30:00', 'R'),
('Kharla', 'Lopes', 'kharla.lopez@gmail.com', '123456789', 'Quiero saber más sobre los servicios que ofrecen', '1', '2024-10-19 09:30:00', 'P'),
('Luana', 'Barrientos', 'luana.barrientos@gmail.com', '987654321', '¿Cómo los contacto?', '0', '2024-10-19 10:15:00', 'R'),
('Vanesa', 'Flores', 'vanesa.flores@gmail.com', '654987321', '¿Cuales son sus planes a fututro?', '1', '2024-10-19 11:00:00', 'P'),
('Joaquín', 'Guzman', 'joaquin.guzman@gmail.com', '321789654', 'Me gusto mucho su producto', '1', '2024-10-19 11:45:00', 'P'),
('Amir', 'Matos', 'amir.matos@gmail.com', '456123789', 'Es un producto muy interesante', '0', '2024-10-19 12:30:00', 'R');

SELECT * FROM user;