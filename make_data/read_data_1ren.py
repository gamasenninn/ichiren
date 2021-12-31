#import xlrd
import glob
import openpyxl as xl
import json



def anl_sheet(wb,sheet_name):

    dd = []
    keys = []
    
    for idx, row in enumerate(wb[sheet_name]):
        d=[]
        dict={}
        for cell in row:
            cval = str(cell.value)
            if cval == 'None':  cval = ''
            d.append(cval)
            if idx == 0:
                keys.append(cval)
        if idx != 0:
            for key,val in zip(keys,d):
                if 'price'== key or 'set_price' == key:
                    if val:
                        dict[key]=int(val)
                    else:
                        dict[key]=0
                else:
                    dict[key]=val
            dd.append(dict)       

    return dd



def conv_data(file):

    print(file)

    #wb = xlrd.open_workbook(file)
    wb = xl.load_workbook(file)

    wsns = [wsn for wsn in wb.sheetnames]

    datas =[]
    for wsn in wsns:
        print(wsn)


        data = anl_sheet(wb,wsn)
        print(data)

        
        if data:
            with open("1ren/"+wsn+'.json','w',encoding='UTF-8') as f:
                json.dump(data, f, indent=2, ensure_ascii=False)

#        break

if __name__ == '__main__':

    flist = glob.glob("1ren/*.xlsx")

    count = 0
    for file in flist:
        conv_data(file)
        count += 1
#        if count >= 1:  # for test
#            break




