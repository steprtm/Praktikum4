use hewan;

CREATE TABLE hewan (
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  owner VARCHAR(50) NOT NULL,
  species VARCHAR(50) NOT NULL,
  sex VARCHAR(10) NOT NULL
);

INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p1', 'Puffball', 'Diane', 'Hamster', 'f')
INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p2', 'Claws', 'Gwen', 'Cat', 'm')
INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p3', 'Fluffy', 'Haro 1d', 'Cat', 'f')
INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p4', 'Buffy', 'Haro 1d', 'Dog', 'f')
INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p5', 'Fang', 'Benny', 'Dog', 'm')
INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p6', 'Bowser', 'Diane', 'Dog', 'm')
INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p7', 'Chirpy', 'Gwen', 'Bird', 'f')
INSERT INTO hewan.hewan (id, name, owner, species) VALUES ('p8', 'Whistler', 'Gwen', 'Bird')
INSERT INTO hewan.hewan (id, name, owner, species, sex) VALUES ('p9', 'Slim', 'Benny', 'Snake', 'm')


SELECT owner, COUNT(*) AS jumlah_hewan
FROM hewan
GROUP BY owner;

SELECT species, COUNT(*) AS jumlah_hewan
FROM hewan
GROUP BY species;

SELECT sex, COUNT(*) AS jumlah_hewan
FROM hewan
GROUP BY sex;

SELECT species, sex, COUNT(*) AS jumlah_hewan
FROM hewan
GROUP BY species, sex;


SELECT species, sex, COUNT(*) AS jumlah_hewan
FROM hewan
WHERE species IN ('Cat', 'Dog')
GROUP BY species, sex;

SELECT sex, COUNT(*) AS jumlah_hewan
FROM hewan
WHERE sex IS NOT NULL
GROUP BY sex;


