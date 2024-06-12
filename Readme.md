# Mobile_phones

## Task1: Create a table with mobile phones

When creating, you must use DDL commands.

FIles: craete_table.sql, inser_datra.sql

List of fields (attributes):
- id – numeric type, auto-increment, primary key;
- product_name is a string type that must be filled in;
- manufacturer is a required string type;
- product_count – numeric type, unsigned;
- price is a numeric type, unsigned.

Using the CRUD INSERT operation, fill the mobile_phones entity with data:
product_name	manufacturer	product_count	price
iPhone X	Apple	156	76000
iPhone 8	Apple	180	51000
Galaxy S9	Samsung	21	56000
Galaxy S8	Samsung	124	41000
P20 Pro	Huawei	341	36000

### My notes:

- To define unsigned integers in PostgreSQL, you must use the method of specifying an unsigned value for the `product_count` column;
- In PostgreSQL, the `UNSIGNED` keyword is not used to define unsigned integers. Try using another way to specify an unsigned value for the column;
- In PostgreSQL, the keyword `SERIAL` is used to create an autoincrement column, but not in combination with the data type `INT'. Try to use the appropriate data type together with `SERIAL'.

FIle: [create_table.sql](create_table.sql)

## Task2: Output data

There is a table (entity) with mobile_phones mobile phones.

The entity has the following fields (attributes):
- id – identifier;
- product_name – name;
- manufacturer – manufacturer;
- product_count – quantity;
- price – the price.

It is necessary to display the name, manufacturer and price for mobile phones with a quantity greater than 2.

FIle: [viewing_data.sql](viewing_data.sql)

## Task3:

There is a table (entity) with mobile_phones mobile phones.

The entity has the following fields (attributes):
- id – identifier;
- product_name – name;
- manufacturer – manufacturer;
- product_count – quantity;
- price – the price.

It is necessary to display the ID, name, manufacturer, quantity and price for mobile phones that have a Samsung manufacturer.

FIle: [viewing_data.sql](viewing_data.sql)

## Task4: Create a table (entity) with manufacturer orders

The entity has the following fields (attributes):
- id – identifier;
- product_name – name;
- manufacturer – manufacturer;
- product_count – quantity;
- price – the price.

The mobile_phones entity has the following entries:
| id | product_name | manufacturer | product_count | price | | --- | ------------ | ------------ | ------------- | ----- | | 1 | iPhone X | Apple | 156 | 76000 | | 2 | iPhone 8 | Apple | 180 | 51000 | | 3 | Galaxy S9 | Samsung | 21 | 56000 | | 4 | Galaxy S8 | Samsung | 124 | 41000 | | 5 | P20 Pro | Huawei | 341 | 36000 |

Create a table (entity) with manufacturer orders. When creating, you must use DDL commands.
List of fields (attributes):
- id – numeric type, auto-increment, primary key;
- name – string type;

Using the CRUD INSERT operation, fill the manufacturer entity according to the data available in the manufacturer attribute of the mobile_phones entity.

FIle: [manufacturer_orders.sql](manufacturer_orders.sql)

## Task5: Show information

There is a table (entity) with mobile_phones mobile phones.
The entity has the following fields (attributes):
- id – identifier;
- product_name – name;
- manufacturer – manufacturer;
- product_count – quantity;
- price – the price.

The mobile_phones entity has the following entries:

id	product_name	manufacturer	product_count	price
1	iPhone X	Apple	156	76000
2	iPhone 8	Apple	180	51000
3	Galaxy S9	Samsung	21	56000
4	Galaxy S8	Samsung	124	41000
5	P20 Pro	Huawei	341	36000

Statuses of the number of mobile phones (depending on the number): 
- less than 100 – "little";
- from 100 to 300 – "many";
- more than 300 – "lots".

It is necessary to display the name, manufacturer and quantity status for mobile phones.

FIle: [show_information.sql](show_information.sql)

## Task6: Update the data, delete the attribute

There is a table (entity) with mobile_phones mobile phones.
The entity has the following fields (attributes):
- id – identifier;
- product_name – name;
- manufacturer – manufacturer;
- product_count – quantity;
- price – the price.

The mobile_phones entity has the following entries:

id	product_name	manufacturer	product_count	price
1	iPhone X	Apple	156	76000
2	iPhone 8	Apple	180	51000
3	Galaxy S9	Samsung	21	56000
4	Galaxy S8	Samsung	124	41000
5	P20 Pro	Huawei	341	36000

There is a reference table (entity) of manufacturers manufacturer.
The entity has the following fields (attributes):
- id – ID;
- name – the name.

The manufacturer entity has the following entries:

id	name
1	Apple
2	Samsung
3	Huawei

Create a foreign key for the mobile_phones entity, manufacturer_id (manufacturer's ID), directed to the id attribute of the manufacturer entity. Set CASCADE update to CASCADE, and when deleting an entry from the manufacturer entity, SET NULL.

Using the CRUD UPDATE operation, update the data in the manufacturer_id attribute of the mobile_phones entity according to the values available in the manufacturer attribute.

Remove the manufacturer attribute from the mobile_phones entity.

Output the ID, name, and manufacturer ID of the mobile_phones entity.

FIle: [update_data.sql](update_data.sql)

## Task7: Display detailed description of the status

A table (amount) with orders fits.
The entity has the following fields (attributes):
- id – user ID;
- mobile_phones_id – mobile phone ID;
- order_status - the status of the order.

mobile phone id_id_status of the order
1 1 OPEN
2 1 OPEN
3 1 CLOSED
4 4 OPEN
5 4 CANCELLED

Detailed description of the order statuses:
- OPEN – "The order is in an open state" ;
- CLOSED - "The order is closed";
- CANCELLED - "The order has been cancelled"

It is necessary to display the ID and a detailed description of the order status.

FIle: [order_status.sql](order_status.sql)

## Task8: Sort data

There is a table (entity) with the staff.
The entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- last name - last name.
- post - position,
- seniority – length of service;
- salary – salary;
- age - age.

It is necessary to output the identifier, first name, last name, salary from the staff entity, while the data must be sorted in ascending order of salary.

FIle: [sort_data.sql](sort_data.sql)

## Task9: Salary sort

There is a table (entity) with the staff.
The entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- last name - last name
- post - position,
- seniority – length of service;
- salary – salary;
- age - age.

It is necessary to output the ID, first name, last name, salary from the staff entity, while the data must be sorted in descending order of salary.

FIle: [salary_sort.sql](salary_sort.sql)

## Task10: Highly paid employees

There is a table (entity) with the staff.
The entity has the following fields (attributes):
id – identifier;
firstname is the name;
last name - last name
post - position,
seniority – length of service;
salary – salary;
age - age.

It is necessary to output the ID, first name, last name, and salary of the five highest-paid employees from the staff entity.

FIle: [highly_paid_employees.sql](highly_paid_employees.sql)

## Task11: Display total salary

There is a table (entity) with the staff.

The entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- last name - last name
- post - position,
- seniority – length of service;
- salary – salary;
- age - age.

Calculate and output the total salary for each specialty (rost) from the staff entity.
The order of attributes output: position, total salary.

FIle: [total_salary.sql](total_salary.sql)

## Task12: Display employees age

There is a table (entity) with the staff.

The entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- last name - last name
- post - position,
- seniority – length of service;
- salary – salary;
- age - age.

Calculate and output the number of employees with the position of 'Worker' and the age of at least 24 years and no older than 49 years.

FIle: [employees_age.sql](employees_age.sql)

## Task13: Display unique posts

There is a table (entity) with the staff.

The entity has the following fields (attributes):
- identifier;
- firstname is the name;
- last name - last name
- post - position,
- seniority – length of service;
- salary – salary;
- age - age.

Calculate and output the number of unique positions available to employees in the 'staff' entity.

FIle: [unique_posts.sql](unique_posts.sql)

## Task14: Display average age

There is a table (entity) with the staff.

The entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- last name - last name
- post - position,
- seniority – length of service;
- salary – salary;
- age - age.

Find the average age of employees for each position from the staff entity.
Output only those positions with an average age of less than 30 years.

FIle: [average_age.sql](average_age.sql)

## Task15: Find the total number of likes that female users have received

There is a database – a social network.

The database contains entities:
- users – users;
- messages – messages;
- friend_requests – friendship requests;
- communities – communities;
- users_communities – community users;
- media_types – media types;
- media – media;
- likes – likes;
- profiles – user profiles.

The "users" entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- lastname - last name;
- email - the email address.

The user profile entity has the following fields (attributes):
- user_id – identifier;
- gender – gender;
- birthday - date of birth;
- photo_id - avatar;
- hometown is a city.

The "gender" attribute of the "user profile" entity can take the following values:
- 'f' is female;
- 'm' is masculine.

The "likes" entity has the following fields (attributes): 
- id – identifier;
- user_id – the user who put the like;
- media_id is the media that was liked.

The media entity has the following fields (attributes):
- id – identifier;
- user_id – media owner user;
- body - content;
- filename – link to the file;
- created_at - date of creation;
- updated_at is the date of the last update.

Find the total number of likes that female users have received.

FIle: [likes_number.sql](likes_number.sql)

## Task16: Sorting by the number of likes

There is a database – a social network.

The database contains entities:
- users – users;
- messages – messages;
- friend_requests – friendship requests;
- communities – communities;
- users_communities – community users;
- media_types – media types;
- media – media;
- likes – likes;
- profiles – user profiles.

The "users" entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- lastname - last name;
- email - the email address.

The user profile entity has the following fields (attributes):
- user_id – identifier;
- gender – gender;
- birthday - date of birth;
- photo_id - avatar;
- hometown is a city.

The "gender" attribute of the "user profile" entity can take the following values:
- 'f' is female;
- 'm' is masculine.

The "likes" entity has the following fields (attributes):
- id – identifier;
- user_id – the user who put the like;
- media_id is the media that was liked.

Find the number of likes that were put by female and male users.
Print the name of the gender (by converting the value of the attribute f to female, and the value ‘m` to male) and the number of likes, applying descending sorting to the number of likes.

FIle: [likes_sorting.sql](likes_sorting.sql)

## Task17: Display id of the users who have not sent any messages

There is a database – a social network.

The database contains entities:
- users – users;
- messages – messages;
- friend_requests – friendship requests;
- communities – communities;
- users_communities – community users;
- media_types – media types;
- media – media;
- likes – likes;
- profiles – user profiles.

The "users" entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- last name - last name;
- email - the email address.

The "messages" entity has the following fields (attributes):
- id – identifier;
- from_user_id – sender;
- to_user_id – recipient;
- body - content;
- created_at is the date of sending.

Output the IDs of the users who have not sent any messages.

FIle: [messages.sql](messages.sql)

## Task18: Display user id, first name, last name, and number of friends for each user

There is a database – a social network.

The database contains entities:
- users – users;
- messages – messages;
- friend_requests – friendship requests;
- communities – communities;
- users_communities – community users;
- media_types – media types;
- media – media;
- likes – likes;
- profiles – user profiles.

The friendship request entity has the following fields(attributes):
- initiator_user_id – initiator;
- target_user_id – recipient;
- status - status;
- requested_at - date of creation;
- updated_at is the date of the last update.

The "users" entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- lastname - last name;
- email - the email address.

Friends are users who have a corresponding entry (application) in the "friendship application" entity and the value 'approved' is specified in the status attribute of this entity.

Find the number of friends each user has. Print the user ID, first name, last name, and number of cnt friends for each user. Sort the output records in ascending order of the user ID.

FIle: [friends_number.sql](friends_number.sql)

## Task19: Display users rank by messages

There is a database – a social network.

The database contains entities:
- users – users;
- messages – messages;
- friend_requests – friendship requests;
- communities – communities;
- users_communities – community users;
- media_types – media types;
- media – media;
- likes – likes;
- profiles – user profiles.

The "users" entity has the following fields (attributes):
- id – identifier;
- firstname is the name;
- lastname - last name;
- email - the email address.

The "messages" entity has the following fields (attributes):
- id – identifier;
- from_user_id – sender;
- to_user_id – recipient;
- body - content;
- created_at is the date of sending.

Find the number of messages sent by each user.
Depending on the number of messages sent, calculate the rank of users by assigning the first place to the user(s) with the largest number of messages sent.

Print the received rank, first name, last name, user and number of sent messages. The output list must be sorted in ascending order of rank.

FIle: [users_rank_by_messages.sql](users_rank_by_messages.sql)

## Task20: Finding the difference of neighboring dates

There is a database – a social network.

The database contains entities:
- users – users;
- messages – messages;
- friend_requests – friendship requests;
- communities – communities;
- users_communities – community users;
- media_types – media types;
- media – media;
- likes – likes;
- profiles – user profiles.

The "messages" entity has the following fields (attributes):
- id – identifier;
- from_user_id – sender;
- to_user_id – recipient;
- body - content;
- created_at is the date of sending.

Get a list of messages sorted in ascending order of the date they were sent.
Calculate the difference between adjacent values of the sending dates. Express the differences in minutes.

Print the message ID, the date of sending, the date of sending the next message, and the difference in the date of sending neighboring messages.

FIle: [difference_of_neighboring_dates.sql](difference_of_neighboring_dates.sql)

## Task21: Date function

Create a function that accepts the number of seconds and formats them in the number of days of the clock. 

Example: 123456 ->'1 days 10 hours 17 minutes 36 seconds'

Print only even numbers from 1 to 10. Example: 2,4,6,8,10 

FIle: [date_function.sql](date_function.sql)