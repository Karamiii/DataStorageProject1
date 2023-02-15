

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (1, 'Nunu', 'Yamaha', 'DT 50cc', 'Good ol Dt');

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (2, 'Lee sin', 'Bugatti', 'Veyron', 'Kallis');

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (3, 'Genji', 'Lamborghini', 'Gallardo', 'Ihan siisti');

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (4, 'Spamzo', 'Porche', '911', 'Perus hieno');

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (5, 'Mcree', 'McLaren', 'P1', 'Lemppari');




INSERT INTO users (id, name, password, token, WhenInUse, drones_id)
VALUES (1, 'Sauli Niinistö', '1234', 'abc123', '2022-01-01 12:00:00', 5);

INSERT INTO users (id, name, password, token, WhenInUse, drones_id)
VALUES (2, 'Tarja Halonen', '5678', 'def456', '2022-02-01 12:00:00', 4);

INSERT INTO users (id, name, password, token, WhenInUse, drones_id)
VALUES (3, 'Martti Ahtisaari', 'abcd', 'ghi789', '2022-03-01 12:00:00', 1);

INSERT INTO users (id, name, password, token, WhenInUse, drones_id)
VALUES (4, 'Mauno Koivisto', 'efgh', 'ghi789', '2022-04-01 12:00:00', 3);

INSERT INTO users (id, name, password, token, WhenInUse, drones_id)
VALUES (5, 'Urho kekkonen', 'ijkl', 'ghi789', '2022-05-01 12:00:00', 2);




INSERT INTO images (id, name, analysis_description, lat, lon, time, drone_id, user_id)
VALUES (1, 'Kuva 1', 'Putkivauriot', 37.3352, -121.8811, '2022-01-01 12:00:00', 5, 1);

INSERT INTO images (id, name, analysis_description, lat, lon, time, drone_id, user_id)
VALUES (2, 'Kuva 2', 'Maisemakuvat', 40.7128, -74.0060, '2022-02-01 12:00:00', 4, 2);

INSERT INTO images (id, name, analysis_description, lat, lon, time, drone_id, user_id)
VALUES (3, 'Kuva 3', 'Työmaan tutkimus', 33.9416, -118.4085, '2022-03-01 12:00:00', 1, 3);

INSERT INTO images (id, name, analysis_description, lat, lon, time, drone_id, user_id)
VALUES (4, 'Kuva 4', 'Maisemakuva 2', 33.9416, -118.4085, '2022-04-01 12:00:00', 3, 4);

INSERT INTO images (id, name, analysis_description, lat, lon, time, drone_id, user_id)
VALUES (5, 'Kuva 5', 'Maisemakuva 3', 33.9416, -118.4085, '2022-05-01 12:00:00', 2, 5);

INSERT INTO images (id, name, analysis_description, lat, lon, time, drone_id, user_id)
VALUES (6, 'Kuva 6', 'Harjoitus', 23.9416, -99.4085, '2022-05-02 12:00:00', 2, 5);




INSERT INTO send_addresses (id, address, token, images_id)
VALUES (1, 'Kuntokatu 3, 33520 Tampere', 'abc123', 1);

INSERT INTO send_addresses (id, address, token, images_id)
VALUES (2, 'Ajurinkatu 20, 70110 Kuopio', 'def456', 4);

INSERT INTO send_addresses (id, address, token, images_id)
VALUES (3, 'Keltinkatu 4-6, 33530 Tampere', 'ghi789', 3);

INSERT INTO send_addresses (id, address, token, images_id)
VALUES (4, '1428 Elm street, Springwood, Ohio', 'ghi789', 2);

INSERT INTO send_addresses (id, address, token, images_id)
VALUES (5, 'Visulahdentie 1, 50180 Mikkeli', 'ghi789', 5);

INSERT INTO send_addresses (id, address, token, images_id)
VALUES (6, 'Kuopion tori, vaasalandia', 'ghi789', 6);
