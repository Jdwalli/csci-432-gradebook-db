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
        print("SQL commands executed successfully.")
    except sqlite3.Error as e:
        print(f"Error executing SQL commands: {e}")


if __name__ == "__main__":
    execute_sql_commands_from_file(SQL_FILE, DB_TEST_FILE)
    conn = sqlite3.connect(DB_TEST_FILE)
    cursor = conn.cursor()
    res = cursor.execute("SELECT * FROM STUDENTS")
    students = res.fetchall()

    for student in students:
        first_name = student[0]
        last_name = student[1]
        student_id = student[3]  

        enrolled_classes_query = f"""
        SELECT COURSES.course_name
        FROM REGISTRATIONS
        INNER JOIN COURSES ON REGISTRATIONS.course_id = COURSES.course_id
        WHERE REGISTRATIONS.student_id = {student_id}
        """

        res = cursor.execute(enrolled_classes_query)

        enrolled_classes = res.fetchall()

        print(f"{first_name} {last_name} is enrolled in the following classes:")
        for enrolled_class in enrolled_classes:
            print(enrolled_class[0], end="\n\n")


