# -*- coding: utf-8 -*-
"""
Created on Sun Aug  9 16:52:26 2020

@author: zfsdr


"""

import pandas as pd

f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/noarea.txt','r')
a = f.read()
dic = eval(a)
f.close()

data=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/new.csv')
'''
for i in range(len(data3)):
    k=data3.loc[i,'上车点编号']
    data3.loc[i,'上车点区域编号']=new_id(k,merge_dict)
'''

#最trick的地方在于叠加for循环和dataframe index匹配特性
aa=[]
cc=[]
for i in range(1,100):
    for k in range(len(dic[i])): #根据字典长度 生成索引值对应的长度 如{1:[2,3,4,5]}那么 aa = [1,1,1,1]
        aa.append(i)
    bb=dic[i] #bb为字典的value也就是缺失值D 
    cc=cc+bb #list累加 生成一个如 [[2,3,4,5,2,4,5,7,8,2,34,45,3...]样list为了后面和dataframe合并
    
frame=pd.DataFrame(cc,index=aa) #用pd.df()index和value一一对应的方式 整合成这个df文件
frame.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/nodistance.csv')
        