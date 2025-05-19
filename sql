
CREATE DATABASE IF NOT EXISTS game_database;
USE game_database;

-- Tabla jugadores
CREATE TABLE IF NOT EXISTS jugadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE jugadores DISCARD TABLESPACE;

-- Tabla partidas
CREATE TABLE IF NOT EXISTS partidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador_id INT NOT NULL,
    puntuacion INT NOT NULL,
    tiempo_juego INT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (jugador_id) REFERENCES jugadores(id) ON DELETE CASCADE
);

-- Vista ranking (Mejores jugadores)
CREATE OR REPLACE VIEW ranking AS 
SELECT 
    jugadores.nombre, 
    MAX(partidas.puntuacion) AS mejor_puntuacion, 
    COUNT(partidas.id) AS total_partidas 
FROM 
    jugadores 
JOIN 
    partidas ON jugadores.id = partidas.jugador_id 
GROUP BY 
    jugadores.id 
ORDER BY 
    mejor_puntuacion DESC 
LIMIT 10;
