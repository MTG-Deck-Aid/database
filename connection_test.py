import psycopg2
from psycopg2 import sql

# Database connection parameters
host = "localhost"  # Example: localhost or an IP address
dbname = "Mystic_Tuner_Application"  # Your database name
user = "MT_Admin"  # Your database username
password = "admin"  # Your database password
port = "5433"  # Default PostgreSQL port

# Connect to your PostgreSQL database
try:
    connection = psycopg2.connect(
        host=host,
        dbname=dbname,
        user=user,
        password=password,
        port=port
    )
    print("Connection successful")

    # Create a cursor object using the connection
    cursor = connection.cursor()

    # Example query to check the connection
    cursor.execute("SELECT version();")
    
    # Fetch the result of the query
    db_version = cursor.fetchone()
    print(f"Database version: {db_version}")

except Exception as e:
    print(f"Error: {e}")

finally:
    # Close the cursor and connection if they were created
    if connection:
        cursor.close()
        connection.close()
        print("Connection closed")
