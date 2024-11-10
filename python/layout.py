import streamlit as st
import psycopg2
import os
from dotenv import load_dotenv
load_dotenv()


conn = psycopg2.connect(host=os.environ['POSTGRE_HOST'],database=os.environ['POSTGRE_DATABASE'],user=os.environ['POSTGRE_USER'],password=os.environ['POSTGRE_PASSWORD'])

with conn:
    with conn.cursor() as cursor:
        sql = '''
        select * from 市場
        '''

        cursor.execute(sql)
        all_country = cursor.fetchall()

st.title('世界大盤分析')
with st.sidebar:
    st.title('請選擇股票市場:')
    st.write('## 台灣')
    input_dict = dict(all_country)
    options = st.multiselect("請選擇",input_dict.values(),default='台灣',placeholder="請選擇市場",label_visibility='hidden')
    st.write(options)