# -*- coding: utf-8 -*-
"""
Created on Fri Aug  7 23:29:51 2020

@author: zfsdr
"""

#将dataframe转换成字典
import pandas as pd

'''
#连接数据库 通过distinct的方法 输出缺少值对应的key值
path = u'Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=' + r"C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/expend2noarea.mdb"
db = pypyodbc.win_connect_mdb(path)
cur = db.cursor()
cur.execute("select O,sum(D) from sheet1 group by O")
bb=[]


for x,y in cur:#注意 只有至少输出两个值 所得的结果才是list 而不是 pypyodbc库独有的 tuple形式
    bb.append(int(x))

'''
'''
# 下面这个方法不好 输出的是比较奇怪的list
dd=[]
for i in cur.fetchall():
    dd.append(list(i))
#这个是标准的从database从读值的方法
'''
   



#读取文件并设置为新的索引
data=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/2nodistance.csv')
di=[]
#data= data.set_index(data['O'])
for i in range(len(data)):
    q=data.loc[i,'O']
    di.append(q)
#print(list(set(di)))


data= data.set_index(data['O'])
b=[]
for i in list(set(di)):
    b.append(data.loc[i,'D'].tolist())
c=dict(zip(list(set(di)),b))


with open ('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/renewnoarea.txt','w') as w:
    w.write(str(c)) #write 函数写入必须为str 所以要将上面的dict转化为str
'''
b=[]
c=[]
ddd=[]
for i in bb:
    try:
        b.append(data.loc[i]['D'].tolist()) #重点data.lic[第一个是列索引，第二个是行索引] so, data.loc[i]['D'] = data.loc[i,'D']
    except:
        b.append(data.loc[i]['D'].tolist())
    continue


for i in bb:
    c.append(i)
for change in bb:
    ddd.append((str(change)))

dic = dict(map(lambda x,y:[x,y],c,b))
with open ('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/noarea.txt','w') as w:
    w.write(str(dic)) #write 函数写入必须为str 所以要将上面的dict转化为str

db.close()
cur.close()
'''



