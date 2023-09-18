# SQL E-commerce Sales Analysis Project

## Overview

This project involves analyzing a fictitious e-commerce company's sales data using SQL. The dataset includes tables for orders, products, customers, and order details. The primary goal is to showcase SQL skills in data manipulation, aggregation, and reporting. Potential employers or collaborators can use this project to understand how to structure a database, write complex SQL queries, and extract valuable insights from data. This project is valuable for roles in data analysis, business intelligence, or database management.

## Database Schema

We have defined the following tables in our database schema:

- Customers
- Products
- Orders
- OrderDetails

You can find the SQL code for creating these tables in the `sql/create_schema.sql` file.

## Data Import

To populate the database with sample data:

1. Ensure you have PostreSQL or a DBMS system installed.
2. Open a terminal or command prompt.
3. Navigate to the `sql` directory: `cd project/sql`.
4. Connect to your database (such as PostgreSQL).
5. Run the schema creation script `sql/create_schema.sql`.
6. Run the data import script `sql/import_data.sql`.

## Queries and Analysis

We have developed various SQL queries to perform analyses, including:

    Calculating total revenue for a specific period.
    Identifying top-selling products and categories.
    Determining customer demographics based on purchase history.
    Finding patterns in seasonal sales.
    Calculating average order value.
    Identifying high-value customers.

You can find sample SQL queries and their results in the `sql/queries.sql` file.

## Visualization

We have used Python and Matplotlib to create visualizations based on our analysis. The Python script can be found in the `/visualization` directory.

## License

This project is open-source and available under the MIT License.

Feel free to explore the project and adapt it for your needs. If you have any questions or suggestions, please don't hesitate to reach out.

Disclaimer: The data in this project is entirely fictional and for demonstration purposes only.
