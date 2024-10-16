CREATE DATABASE biblioteca;
USE biblioteca;
-- Crear tabla generos
CREATE TABLE IF NOT EXISTS generos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Crear tabla libros
CREATE TABLE IF NOT EXISTS libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    genero_id INT,
    FOREIGN KEY (genero_id) REFERENCES generos(id)
);
INSERT INTO generos (nombre) VALUES
('Ciencia Ficción'),
('Drama'),
('Terror');
INSERT INTO libros (titulo, autor, precio, stock, genero_id) VALUES
-- Libros de Ciencia Ficción
('Dune', 'Frank Herbert', 120000, 10, 1),
('Neuromante', 'William Gibson', 95000, 20, 1),
('Fundación', 'Isaac Asimov', 80000, 15, 1),

-- Libros de Drama
('Romeo y Julieta', 'William Shakespeare', 100000, 50, 2),
('Hamlet', 'William Shakespeare', 85000, 30, 2),
('La Casa de Bernarda Alba', 'Federico García Lorca', 90000, 40, 2),

-- Libros de Terror
('It', 'Stephen King', 150000, 15, 3),
('El Exorcista', 'William Peter Blatty', 90000, 20, 3),
('El Talismán', 'Stephen King', 110000, 10, 3);

SELECT * FROM generos;
SELECT * FROM libros;
