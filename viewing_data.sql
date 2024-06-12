SELECT product_name, manufacturer, price
FROM mobile_phones
WHERE product_count > 2;

SELECT id, product_name, manufacturer, product_count, price
FROM mobile_phones
WHERE manufacturer = 'Samsung';