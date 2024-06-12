-- 1. Creating a foreign key and installing cascading updates and deletions:

ALTER TABLE mobile_phones
ADD COLUMN manufacturer_id INT,
ADD CONSTRAINT fk_manufacturer
FOREIGN KEY (manufacturer_id) REFERENCES manufacturer(id)
ON UPDATE CASCADE
ON DELETE SET NULL;

-- 2. Updating the data in the manufacturer_id attribute of the mobile_phones entity:

UPDATE mobile_phones AS mp
SET manufacturer_id = m.id
FROM manufacturer AS m
WHERE mp.manufacturer = m.name;

-- 3. Removing the manufacturer attribute from the mobile_phones entity:

ALTER TABLE mobile_phones
DROP COLUMN manufacturer;

-- 4. Output the identifier, name and manufacturer identifier of the mobile_phones entity:

SELECT id, product_name, manufacturer_id
FROM mobile_phones;