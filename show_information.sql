SELECT
    product_name,
    manufacturer,
    CASE
        WHEN product_count < 100 THEN 'little'
        WHEN product_count BETWEEN 100 AND 300 THEN 'many'
        ELSE 'lots'
    END AS status
FROM mobile_phones;