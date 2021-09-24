import psycopg2

connection = psycopg2.connect(host="comp421.cs.mcgill.ca", database="cs421", user="cs421g79", password="Bestteamever79",
                              port="5432", sslmode="require")
cursor = connection.cursor()
cursor.execute("SELECT * FROM most_profitable_stays(%s); ", (300,))
connection.commit()
cursor.close()
connection.close()
