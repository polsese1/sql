CREATE TABLE professors (
id INT UNSIGNED,
nif CHAR(9),
nom VARCHAR(20),
especialitat VARCHAR(15),
telefon INT UNSIGNED,
PRIMARY KEY (id),
UNIQUE (nif)
);

CREATE TABLE alumnes (
	num_matricula INT UNSIGNED,
	nom VARCHAR(20),
	data_naixement DATE,
	-- A tots els telefons se li assignarà un prefix '+34'
	telefon INT UNSIGNED,
	PRIMARY KEY (num_matricula)
);

CREATE TABLE assignatures (
	codi INT UNSIGNED,
	nom VARCHAR(20),
	id_professor INT UNSIGNED,
	PRIMARY KEY (codi),
	FOREIGN KEY (id_professor) REFERENCES professors(id)
);

CREATE TABLE matriculacions (
    num_matricula_alumne INT UNSIGNED,
    codi_assignatura INT UNSIGNED,
    any_acadèmic INT,  -- Asegúrate de definir el tipo de dato aquí
    PRIMARY KEY (num_matricula_alumne, codi_assignatura),
    FOREIGN KEY (num_matricula_alumne) REFERENCES alumnes(num_matricula),
    FOREIGN KEY (codi_assignatura) REFERENCES assignatures(codi)
);

	

	
