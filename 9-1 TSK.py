# -*- coding: utf-8 -*-
"""
Created on Fri Aug  7 23:01:27 2020

@author: zfsdr
目标：
    找到所有缺值 包括count<4的值 所能替代的距离值

思路：
    1. 以剔除count<4的文件为基础文件，导入数据库中，作为替代值的依据来源
    2. 以放大值字典作为目标文件，取多个O 到 唯一 D 的平均值 作为替代值 如 若原先缺的是 1-34，现在1 可以用 [2,3,4]替代，则1-34的距离为 2-34，3-34，4-34距离的平均值替代

说明：这个文件用来连接数据库（含有标准格式的 count>4） 生成缺值放大以后的距离值，若缺值没有发生改变，只用改变放大区域字典文件（也就是8-1 TSK输出文件即可）
"""
#access数据库读取方法
import pypyodbc
import pandas as pd
# 缺值字典文件 如{1:[2,3,45,45],2:[23,34]}诸如此类 该文件通过 xxx.py可以生成
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/newnoarea.txt','r') 
a = f.read()
noarea_dict = eval(a)
f.close()

# 放大后的区域对应文件，如1放大为[2,3,4]，则字典文件为{1:[2,3,4]}诸如此类 该文件可以通过 xxx.py 可以生成
g = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/area8.txt','r') 
b = g.read()
area_dict = eval(b)
g.close()

#data3=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/noarea.csv')

#连接数据库
path = u'Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=' + r"C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/newlook.accdb"
db = pypyodbc.win_connect_mdb(path)
cur = db.cursor()

'''
cur.execute("SELECT D,avg(avg_mile) AS avgmile FROM (SELECT * FROM sheet1 WHERE d in (34,58,88,92))  WHERE O in (7,8,9,10,11,12) GROUP BY d")
for x,y in cur:
    print(x,y)
#vb=cur.fetchall()
#vv=pd.Series(vb,index=[1,2,3,4])
ttt=data3[data3['O']==1]['D']
'''

#根据缺失值信息 从数据库里读取替代值信息
a=[]
b=[]
c=[]
for k,v in noarea_dict.items():
    d=area_dict[k]
    #底下的sql语句进行的缺值对求平均值的工作 注意 下面用了avg语法 也就是做了平均值筛选工作
    cur.execute("SELECT D,avg(averagemile) AS avgmile FROM (SELECT * FROM sheet1 WHERE d in ("+(" ,").join(str(i) for i in v)+"))  WHERE O in ("+(" ,").join(str(i) for i in d)+") GROUP BY d")#这里面可以直接读取数据库 用sql语言
    for x,y in cur:#注意这里一定要读取两个值 不然生成的就是pypyodbc的专有值 很奇怪
        a.append(k)
        b.append(x)
        c.append(y)

data={'O':a,'D':b,'distance':c}
frame=pd.DataFrame(data)

#输出到csv
frame.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/expend/8.csv')


