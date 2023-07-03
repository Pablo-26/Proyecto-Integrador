use PracticumDataBase;

/* Catalogos de la tabla PERSONA */

-- Insercion de data en el catalogo Sexo
INSERT INTO csexo (idcSexo, descripcion) VALUES (1, 'Hombre');
INSERT INTO csexo (idcSexo, descripcion) VALUES (2, 'Mujer');

/* Catalogos de la tabla PERSONA */

-- Insercion de data en el catalogo Sexo
INSERT INTO csexo (idcSexo, descripcion) VALUES (1, 'Hombre');
INSERT INTO csexo (idcSexo, descripcion) VALUES (2, 'Mujer');

-- Insercion de data en el catalogo Estado Civil
INSERT INTO cestadocivil (idcEstadoCivil, descripcion) VALUES (1, 'Casado(a)');
INSERT INTO cestadocivil (idcEstadoCivil, descripcion) VALUES (2, 'Separado(a)');
INSERT INTO cestadocivil (idcEstadoCivil, descripcion) VALUES (3, 'Divorciado(a)');
INSERT INTO cestadocivil (idcEstadoCivil, descripcion) VALUES (4, 'Viudo(a)');
INSERT INTO cestadocivil (idcEstadoCivil, descripcion) VALUES (5, 'Union Libre');
INSERT INTO cestadocivil (idcEstadoCivil, descripcion) VALUES (6, 'Soltero(a)');
INSERT INTO cestadocivil (idcEstadoCivil, descripcion) VALUES (7, 'No responde');

-- Insercion de data en catalogo Nivel de Instruccion
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (1, 'Ninguno');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (2, 'Centro de alfabetizacion');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (3, 'Jardin de infantes');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (4, 'Primaria');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (5, 'Educacion basica');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (6, 'Secundaria');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (7, 'Educacion media / Bachillerato');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (8, 'Superior no Universitario');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (9, 'Superior Universitario');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (10, 'Post - grado');
INSERT INTO cnivelinstruccion (idcNivelInst, descripcion) VALUES (11, 'No responde');

/* Catalogo de la tabla CONSUMO*/

-- Insercion de data en catalogo Economia del Hogar
INSERT INTO ceconomiahogar (idcEconHogar, descripcion) VALUES (1, 'Mejor');
INSERT INTO ceconomiahogar (idcEconHogar, descripcion) VALUES (2, 'Igual');
INSERT INTO ceconomiahogar (idcEconHogar, descripcion) VALUES (3, 'Peor');

-- Insercion de data en catalogos Alimentos Vestimenta y Electrodomesticos del hogar en relacion al mes pasado
-- Alimetacion
INSERT INTO calimentoshogar (idcAlimeHogar, descripcion) VALUES (1, 'Mayor');
INSERT INTO calimentoshogar (idcAlimeHogar, descripcion) VALUES (2, 'Igual');
INSERT INTO calimentoshogar (idcAlimeHogar, descripcion) VALUES (3, 'Menor');

-- Electrodomesticos
INSERT INTO celectrodomhogar (idcElecHogar, descripcion) VALUES (1, 'Mayor');
INSERT INTO celectrodomhogar (idcElecHogar, descripcion) VALUES (2, 'Igual');
INSERT INTO celectrodomhogar (idcElecHogar, descripcion) VALUES (3, 'Menor');

-- Vestimenta
INSERT INTO cvestimentahogar (idcVestHogar, descripcion) VALUES (1, 'Mayor');
INSERT INTO cvestimentahogar (idcVestHogar, descripcion) VALUES (2, 'Igual');
INSERT INTO cvestimentahogar (idcVestHogar, descripcion) VALUES (3, 'Menor');