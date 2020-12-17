# Food Database
Tired of not knowing what ingredients a certain meal requires, or what meals you can make with certain ingredients? This repo organizes your cookbook knowledge into a SQL database.

We'll use [pgadmin4](https://www.pgadmin.org/).

## Brief overview
Our database is organized into the following tables: **meal**, **ingredient**, and **meal-ingredient** (an intermediary table for the many-to-many relationship between meals and ingredients).

Run the code in `setup.sql` to create the database.
