import subprocess
import os

# Get the original script directory (where backup.sql is located)
script_dir = os.getcwd()
backup_path = os.path.join(script_dir, "backup.sql")
roles_backup_path = os.path.join(script_dir, "roles_backup.sql")
# Get password input
pg_password = input("Enter PostgreSQL password: ")

# Set PostgreSQL environment variable for password
os.environ["PGPASSWORD"] = pg_password  # Auto-fill password for psql

# Change working directory to PostgreSQL bin folder
pg_bin_path = r"C:\Program Files\PostgreSQL\17\bin"
os.chdir(pg_bin_path)

# Define commands
commands = [
    r'.\psql -U postgres -h localhost -p 5433 -d postgres -c "DROP DATABASE \"Mystic_Tuner_Application\";"',
    r'.\psql -U postgres -h localhost -p 5433 -d postgres -c "CREATE DATABASE \"Mystic_Tuner_Application\";"',
    rf'.\psql -U postgres -h localhost -p 5433 -f "{roles_backup_path}"',
    rf'.\psql -U postgres -h localhost -p 5433 -d Mystic_Tuner_Application -f "{backup_path}"'
]

# Execute commands
for cmd in commands:
    print(f"Running: {cmd}")
    process = subprocess.run(cmd, shell=True, text=True, capture_output=True)
    print(process.stdout)
    if process.stderr:
        print("Error:", process.stderr)

# Clear the password from environment variables for security
del os.environ["PGPASSWORD"]

print("All commands executed.")
