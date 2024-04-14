import sqlite3

SQL_FILE = 'source.sql'
DB_TEST_FILE = 'gradebook_database.db'

def execute_sql_commands_from_file(sql_file, db_file):
    try:
        conn = sqlite3.connect(db_file)
        cursor = conn.cursor()

        with open(sql_file, 'r') as file:
            sql_commands = file.read().split(';')

        for command in sql_commands:
            if command.strip():
                cursor.execute(command)
        
        conn.commit()

        conn.close()
        print(f"SQL commands executed successfully.\n{DB_TEST_FILE} has been created!")
    except sqlite3.Error as e:
        print(f"Error executing SQL commands: {e}")


if __name__ == "__main__":
    execute_sql_commands_from_file(SQL_FILE, DB_TEST_FILE)
    conn = sqlite3.connect(DB_TEST_FILE)
    cursor = conn.cursor()
    

