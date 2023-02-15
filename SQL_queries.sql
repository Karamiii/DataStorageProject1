

-- Who uses the drone:

SELECT u.name AS Käyttäjä,
u.id AS 'Käyttäjä ID',
d.name AS Drone,
d.id AS 'Drone ID',
d.model AS Merkki,
d.brand AS Malli
FROM users u
JOIN drones d ON u.drones_id = d.id;



-- Is the drone free:

SELECT d.name AS Drone,
CASE WHEN u.name IS NULL THEN 'VAPAA' ELSE 'Varattu' END AS Tilanne
FROM drones d
LEFT JOIN users u ON d.id = u.drones_id;


--Drone images and their users

SELECT d.id AS 'Drone ID',
d.name AS Drone,
i.id AS 'Kuva ID',
i.name AS Kuva,
u.name AS 'Käyttäjä'
FROM images i
JOIN drones d ON i.drone_id = d.id
JOIN users u ON i.user_id = u.id;


-- Drone that took the picture, analysis of the picture, user, time and location information

SELECT d.name AS Drone,
d.id AS 'Drone ID',
i.id AS 'Kuva ID',
i.analysis_description AS Kuvaus,
i.time AS Aika,
i.lat, i.lon,
u.name AS Käyttäjä
FROM images i
JOIN drones d ON i.drone_id = d.id
JOIN users u ON i.user_id = u.id;
