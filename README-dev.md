# database
Database design for the web application



# connection details for connecting python script to database:
host: #Will depend on deployment - use localhost for local development
database: "Mystic_Tuner_Application"
name: MT_admin*
password: admin
port: 5433

*This is not the default user, the default would be postgres, which you would set up when you first launch pgadmin4.  If you 
follow the instructions below you'll automatically download the above user.

# Setting up the server

Server was build using PostGreSQL 17.2 on PGAdmin4 verison 9

# downloading/loading the server script:

navigate to the bin file within PostgreSQL.  Default should be: C:\Program Files\PostgreSQL\17\bin

ALL commands below must be run in that directory

# to download: 
.\pg_dump -U user -h localhost -p port -d database_name -F p -f "Path to write the file to"
example:
.\pg_dump -U MT_Admin -h localhost -p 5433 -d Mystic_Tuner_Application -F p -f "C:\Users\marcu\OneDrive\Documents\SENG 401\Project\database\backup.sql"

The above downloads the database information, to download users use the following:

.\pg_dumpall -U postgres -h localhost -p 5433 --roles-only > "Path to write the file to\roles_backup.sql"

# to create new database:

.\psql -U your_username -h localhost -p 5433 -d postgres -c "CREATE DATABASE database_name;"

for current purposes, use this command:

.\psql -U postgres -h localhost -p 5433 -d postgres -c "CREATE DATABASE Mystic_Tuner_Application;"

# to upload database:
.\psql -U your_username -h localhost -p port -d database_name -f "Path to file to load from"

example
.\psql -U postgres -h localhost -p 5433 -d Mystic_Tuner_Application -f "C:\Users\marcu\OneDrive\Documents\SENG 401\Project\database\backup.sql"

NOTE: rerunning the write command doesn't have any adverse effects from what I saw.  The script doesn't create duplicate data.


# to upload users
example:
.\psql -U postgres -h localhost -p 5433 -f "C:\Users\marcu\OneDrive\Documents\SENG 401\Project\database\roles_backup.sql"

NOTE: you must use a superuser login to make this command.  By default it should be postgres I believe.

# Testing

To test everything is good, start the server through pgadmin4 and run the connection_test.py file (make sure you downloaded the things listed in requirements.txt).  If it succeeds, you're balling.
If it fails, if I'm in Costa Rica, good luck!