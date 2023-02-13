

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (1, 'Drone A', 'DJI', 'Phantom 4 Pro', 'Has 20 MP camera');

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (2, 'Drone B', 'Parrot', 'Anafi USA', 'Has thermal imaging');

INSERT INTO drones (id, name, brand, model, additional_info)
VALUES (3, 'Drone C', 'Yuneec', 'Typhoon H Plus', 'Has 6 rotors');


INSERT INTO users (id, name, password, token, additional_info)
VALUES (1, 'John Doe', '1234', 'abc123', 'Has experience with DJI drones');

INSERT INTO users (id, name, password, token, additional_info)
VALUES (2, 'Jane Doe', '5678', 'def456', 'New to drone flying');

INSERT INTO users (id, name, password, token, additional_info)
VALUES (3, 'Bob Smith', 'abcd', 'ghi789', 'Expert in aerial photography');



INSERT INTO images (id, name, analysis_description, lat, lon, time)
VALUES (1, 'Image A', 'Agricultural analysis', 37.3352, -121.8811, '2022-01-01 12:00:00');

INSERT INTO images (id, name, analysis_description, lat, lon, time)
VALUES (2, 'Image B', 'Environmental monitoring', 40.7128, -74.0060, '2022-02-01 12:00:00');

INSERT INTO images (id, name, analysis_description, lat, lon, time)
VALUES (3, 'Image C', 'Construction site inspection', 33.9416, -118.4085, '2022-03-01 12:00:00');



INSERT INTO send_addresses (id, address, token)
VALUES (1, '123 Main St, San Francisco, CA 94105', 'abc123');

INSERT INTO send_addresses (id, address, token)
VALUES (2, '456 Park Ave, New York, NY 10022', 'def456');

INSERT INTO send_addresses (id, address, token)
VALUES (3, '789 Sunset Blvd, Los Angeles, CA 90069', 'ghi789');
