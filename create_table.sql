DROP TABLE IF EXISTS mobile_phones;
CREATE TABLE mobile_phones (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255) NOT NULL,
    product_count INT4 CHECK (product_count >= 0),
    price INT4 CHECK (price >= 0)
);