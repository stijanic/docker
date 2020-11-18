'''
Created on Dec 28, 2015

@author: stijanic
'''
import psycopg2

def postgresql():
    conn =  psycopg2.connect("dbname=test user=test password=test host=localhost")
    cur = conn.cursor()
    cur.execute("DROP TABLE IF EXISTS yo")
    cur.execute("CREATE TABLE yo (id serial PRIMARY KEY, num integer, data varchar)")
    cur.execute("""INSERT INTO yo (id, num, data) VALUES (1, 1, 'value')""")
    cur.execute("""INSERT INTO yo (id, num, data) VALUES (2, 2, 'main')""")
    cur.execute("""SELECT * FROM yo""")
    print("\nPostgreSQL")
    print(cur.fetchone())
    print(cur.fetchone())
    #cur.execute("""DROP TABLE IF EXISTS yo""")
    conn.commit()

answer = input("Ready? ")
if (answer == 'y'):
    postgresql()
