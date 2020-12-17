-- Instantiate database
CREATE DATABASE IF NOT EXISTS food_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

-- Create table for meals
CREATE TABLE IF NOT EXISTS meal (
	id SERIAL PRIMARY KEY,
	name VARCHAR(256) NOT NULL,
	url VARCHAR(512) NOT NULL,
	for_breakfast BOOL,
	for_lunch BOOL,
	for_dinner BOOL,
	for_dessert BOOL,
	keywords VARCHAR(512),
	tips VARCHAR(512)
);

-- Create table for ingredients
CREATE TABLE IF NOT EXISTS ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

-- Create many-to-many link between meal and ingredient tables
CREATE TABLE IF NOT EXISTS meal_ingredient (
      meal_id INT REFERENCES meal(id) ON UPDATE CASCADE ON DELETE CASCADE,
      ingredient_id INT REFERENCES ingredient(id) ON UPDATE CASCADE ON DELETE CASCADE
);
