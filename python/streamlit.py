import streamlit as st


import psycopg2
conn = psycopg2.connect(
    database="render992",
    user="render992_user",
    password="C3Cwqsvu4r5TnMUOqa3CqDY5f03efO0T",
    host="dpg-csabsbi3esus739rc2m0-a.singapore-postgres.render.com",  # 通常是 '127.0.0.1' 或 'localhost'
    port="5432")

cur = conn.cursor()
cur.execute("SELECT * FROM actor;")
rows = cur.fetchall()
names = []
for row in rows:
    names.append(row[2])
st.write(names)
