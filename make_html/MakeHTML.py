#-------------------------------------------------------------------------------
# Name:        EXCELファイルからHTMLを作成
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

def make_html(template_file, data_file,sheet_name,out_file):


    env = Environment(loader=FileSystemLoader('.'))
    template = env.get_template(template_file)

    df = pd.read_excel(data_file, sheet_name=sheet_name)
    #タイトル	内容	価格	セット	セット価格	画像
    #title	content	price	set	set_price	image
    df.fillna('',inplace=True)
    if 'content' in df.keys():
        df['content'] = df['content'].str.replace('\n','<BR>\n')

    rendered = template.render(data=df)

    print(str(rendered))

#    f_l = template_file.split('.')
#    outfile = f_l[0]+'.html'
    with open(out_file,mode='w',encoding='utf-8') as f:
        f.write(str(rendered))


if __name__ == '__main__':
    make_html(template_file='__navi.tpl',data_file='data.xlsx',sheet_name='ナビ',out_file='_navi.html')
    make_html(template_file='__index.tpl',data_file='data.xlsx',sheet_name='home',out_file='index.html')
    make_html(template_file='__menu.tpl',data_file='data.xlsx',sheet_name='メインメニュー',out_file='menu.html')
    make_html(template_file='__drink.tpl',data_file='data.xlsx',sheet_name='drink',out_file='drink.html')
