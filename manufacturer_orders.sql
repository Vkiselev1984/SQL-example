DROP TABLE IF EXISTS manufacturer;
CREATE TABLE manufacturer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO manufacturer (name) VALUES ('Apple'), ('Samsung'), ('Huawei');