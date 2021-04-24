-- 1.	Get all the list of customers.
SELECT * FROM customer;

-- 2.	Get all the list of customers as well as their address.
SELECT customer.first_name, customer.last_name, address.address
FROM customer
LEFT JOIN address ON customer.address_id = address.address_id;

-- 3.	Get all the list of customers as well as their address and the city name.
SELECT customer.first_name, customer.last_name, address.address, city.city
FROM customer, address, city
WHERE customer.address_id = address.address_id AND address.city_id = city.city_id;

-- 4.	Get all the list of customers as well as their address, city name, and the country.
SELECT customer.first_name, customer.last_name, address.address, city.city, country.country
FROM customer, address, city, country
WHERE customer.address_id = address.address_id AND address.city_id = city.city_id AND city.country_id = country.country_id;

-- 5.	Get all the list of customers who live in Bolivia
SELECT customer.first_name, customer.last_name, address.address, city.city, country.country
FROM customer, address, city, country
WHERE customer.address_id = address.address_id AND address.city_id = city.city_id AND city.country_id = country.country_id AND country.country="Bolivia";

-- 6.	Get all the list of customers who live in Bolivia, Germany and Greece
SELECT customer.first_name, customer.last_name, address.address, city.city, country.country
FROM customer, address, city, country
WHERE customer.address_id = address.address_id AND address.city_id = city.city_id AND city.country_id = country.country_id AND country.country IN ("Bolivia", "Germany", "Greece");

-- 7.	Get all the list of customers who live in the city of Baku.
SELECT customer.first_name, customer.last_name, address.address, city.city, country.country
FROM customer, address, city, country
WHERE customer.address_id = address.address_id AND address.city_id = city.city_id AND city.country_id = country.country_id AND city.city="Baku";

-- 8.	Get all the list of customers who live in the city of Baku, Beira, and Bergamo.
SELECT customer.first_name, customer.last_name, address.address, city.city, country.country
FROM customer, address, city, country
WHERE customer.address_id = address.address_id AND address.city_id = city.city_id AND city.country_id = country.country_id AND city.city IN ("Baku", "Beira", "Bergamo");

-- 9.	Get all the list of customers who live in a country where the country name's length is less than 5.  Show the customer with the longest full name first.  (Hint:  Look into how you can concatenate a string in SQL).


-- 10.	Get all the list of customers who live in a city name whose length is more than 10.  Order the result so that the customers who live in the same country are shown together.


-- 11.	Get all the list of customers who live in a city where the city name includes the word 'ba'.  For example Arratuba or Baiyin  should show up in your result.


-- 12.	Get all the list of customers where the city name includes a space.  Order the result so that customers who live in the longest city are shown first.


-- 13.	Get all the customers where the country name is longer than the city name.

