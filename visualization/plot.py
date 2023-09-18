import matplotlib.pyplot as plt
import psycopg2

# Connect to your database

# Modify data here
conn = psycopg2.connect(
    dbname="your_database_name",
    user="your_username",
    password="your_password",
    host="your_database_host",
    port="your_database_port",
)

# Example SQL query to retrieve monthly sales data
sql_query = """
    SELECT
        EXTRACT(MONTH FROM o.order_date) AS month,
        SUM(od.quantity * od.unit_price) AS monthly_revenue
    FROM Orders o
    JOIN OrderDetails od ON o.order_id = od.order_id
    GROUP BY month
    ORDER BY month;
"""

# Execute the SQL query and fetch data
cur = conn.cursor()
cur.execute(sql_query)
data = cur.fetchall()

# Extract month and revenue data from the result
months = [row[0] for row in data]
revenues = [row[1] for row in data]

# Close the database connection
cur.close()
conn.close()

# Create a bar chart using Matplotlib
plt.figure(figsize=(10, 6))
plt.bar(months, revenues)
plt.xlabel("Month")
plt.ylabel("Monthly Revenue")
plt.title("Monthly Sales Revenue")
plt.xticks(months)
plt.show()
