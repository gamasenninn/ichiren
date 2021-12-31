#-------------------------------------------------------------------------------
# Name:        DBファイルからHTMLを作成
# Purpose:
#
# Author:      Satoshi Ono
#
# Created:     26/03/2020
# Copyright:   (c) FMVA1602FP 2020
# Licence:     MIT
#-------------------------------------------------------------------------------

from jinja2 import Template, Environment, FileSystemLoader
import pandas as pd
import datetime
import sqlite3

def make_html(template_file, db_file,table_name,out_file):

    conn = sqlite3.connect(db_file)

    env = Environment(loader=FileSystemLoader('.'))
    template = env.get_template(template_file)

    #df = pd.read_excel(data_file, sheet_name=sheet_name)
    df = pd.read_sql(sql= "select * from "+table_name, con=conn)
    print(df)

    df.fillna('',inplace=True)
    if 'content' in df.keys():
        df['content'] = df['content'].str.replace('\n','<BR>\n')
    if 'date' in df.keys():
        print (df['date'])
        df['date'] = df['date'].str.replace('00:00:00','') 
        print (df['date'])

    rendered = template.render(data=df)

    print(str(rendered))


    with open(out_file,mode='w',encoding='utf-8') as f:
        f.write(str(rendered))


if __name__ == '__main__':
    make_html(template_file='__navi.tpl',db_file='../make_data/rem_1ren.db',table_name='navi',out_file='_navi.html')
    make_html(template_file='__index.tpl',db_file='../make_data/rem_1ren.db',table_name='home',out_file='index.html')
    make_html(template_file='__menu.tpl',db_file='../make_data/rem_1ren.db',table_name='main',out_file='menu.html')
    make_html(template_file='__drink.tpl',db_file='../make_data/rem_1ren.db',table_name='sub',out_file='drink.html')
