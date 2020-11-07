'''
Created on Dec 28, 2015

@author: stijanic
'''
import MySQLdb

def mariadb():
    conn = MySQLdb.connect(host="localhost", user="root", passwd="", db="test")
    #conn.query("""DROP TABLE IF EXISTS t""")
    #conn.query("""CREATE TABLE t (c CHAR(20) CHARACTER SET utf8 COLLATE utf8_bin)""")
    conn.query("""INSERT INTO t VALUES ('value')""")
    conn.query("""INSERT INTO t VALUES ('main')""")
    cur = conn.cursor()
    cur.execute("""SELECT * FROM t""")
    print("\nMariaDB")
    print(cur.fetchone())
    print(cur.fetchone())
    #conn.query("""DROP TABLE IF EXISTS t""")
    conn.commit()

answer = raw_input("Ready? ")
if (answer == 'y'):
    mariadb()