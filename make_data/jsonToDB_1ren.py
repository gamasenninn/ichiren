import glob
import json
import sqlite3
from sqlwrap_sqlite import *

def create_model(conn):
    

    sql_navi ='''
    CREATE TABLE IF NOT EXISTS "navi" (
            "n_id"	        INTEGER,
            "num"               INTEGER,
            "title" 	        TEXT,
            "title_en" 	        TEXT,
            "url"       	TEXT,
            PRIMARY KEY("n_id" AUTOINCREMENT)
    );
    '''
    sql_home ='''
    CREATE TABLE IF NOT EXISTS "home" (
            "h_id"          INTEGER,
            "num"           INTEGER,
            "category"	    TEXT,
            "subcateg"	    TEXT,
            "title"	    TEXT,
            "content"	    TEXT,
            "price"	    INTEGER,
            "add_letter"    TEXT,
            "layout"	    TEXT,
            "pickup"	    TEXT,
            "date"	    TEXT,
            "image"	    TEXT,
            "before_html"   TEXT,
            "after_html"    TEXT,
            PRIMARY KEY("h_id" AUTOINCREMENT)
    );
    '''

    sql_main ='''
    CREATE TABLE IF NOT EXISTS "main" (
            "m_id"          INTEGER,
            "num"           INTEGER,            
            "category"	    TEXT,
            "subcateg"	    TEXT,
            "title"	    TEXT,
            "content"	    TEXT,
            "price"	    INTEGER,
            "add_letter"    TEXT,
            "set_menu"	    TEXT,
            "set_price"	    INTEGER,
            "add_letter2"   TEXT,
            "layout"	    TEXT,
            "pickup"	    TEXT,
            "date"	    TEXT,
            "image"	    TEXT,
            "before_html"   TEXT,
            "after_html"    TEXT,
            PRIMARY KEY("m_id" AUTOINCREMENT)
    );
    '''
    sql_sub ='''
    CREATE TABLE IF NOT EXISTS "sub" (
            "s_id"          INTEGER,
            "num"           INTEGER,
            "class"	    TEXT,
            "category"	    TEXT,
            "subcateg"	    TEXT,
            "title"	    TEXT,
            "content"	    TEXT,
            "price"	    INTEGER,
            "add_letter"    TEXT,
            "layout"	    TEXT,
            "pickup"	    TEXT,
            "coment"	    TEXT,
            "date"	    TEXT,
            "image"	    TEXT,
            "before_html"   TEXT,
            "after_html"    TEXT,
            PRIMARY KEY("s_id" AUTOINCREMENT)
    );
    '''


    conn.execute(sql_navi)
    conn.execute(sql_home)
    conn.execute(sql_main)
    conn.execute(sql_sub)
    
    conn.commit()


def toDB(conn,table_name,data,num):

    print('table:',table_name)


    print(json.dumps(data,indent=2,ensure_ascii=False))
    ret = dict_insert(conn, table_name, data)
    #ret = dict_insert(conn, 'doc_header', header)
    print (ret)

    conn.commit()

    return



if __name__ == '__main__':

    conn = sqlite3.connect('rem_1ren.db')
    create_model(conn)

    flist = glob.glob("1ren/*.json")
    for fname in flist:
        print(f"--------{fname}----------")
        with open(fname,mode='r',encoding='UTF-8') as f:
            datas = json.load(f)
            rcnt = 0
            print(datas)
            for data in datas:
                rcnt += 1
                data['num'] = rcnt
                table_name = fname.split('\\')[-1]
                table_name = table_name.replace('.json','')
                toDB(conn,table_name,data,rcnt)
        #break
                
    conn.close()
        


'''

    flist = glob.glob("PC0/*.json")
    flist += glob.glob("PC2/*.json")
    flist += glob.glob("PC3/*.json")

    fcnt = 0
    rcnt = 0
    for fname in flist:
        fcnt +=1
        print(f"--------{fname}----------")
        with open(fname,mode='r',encoding='UTF-8') as f:
            datas = json.load(f)
            for data in datas:
                if data[0]['body']:
                    rcnt += 1
                    toDB(conn,data[0],rcnt)

    
    conn.close()
'''
