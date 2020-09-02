# -*- coding: utf-8 -*-
"""
Created on Mon Aug 10 15:25:56 2020

@author: zfsdr

这一块知识点的拆解可以看同文件夹内 1 2 文件 有清楚解释 

思路：
    1. 先生成原始文件的存在区域的对应字典
    2. 生成标准一一对应字典 详细可以见解释
    3. 两个字典比较，除去存在在字典1中的值生成缺值字典
    4.字典转dataframe转csv

知识点：
    1. data.set_index() 重置索引
    2. dict(zip()) 同len的list合并为字典
    3. lamuda函数的使用

"""
import numpy as np
import pandas as pd

#读取原始文件
data=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/result.csv')
#读取原文件的O
di=[]
for i in range(len(data)):
    q=data.loc[i,'O']
    di.append(q)
# 2
data= data.set_index(data['O'])#改索引为O的值

b=[]
for i in list(set(di)):#set 去重复值再用list转换回来
    b.append(data.loc[i,'D'].tolist())#生成当索引为n时对应所有value的集合的list 


# 3    
c=dict(zip(list(set(di)),b))#生成原始文件字典（这里不是缺失值，是已有值）


#99个区域标准字典{1:[1,2,3,...,99],2:[1,2,3,...,99]...}目的是为了从已有值字典中筛选出缺失值
k=[]
for i in range(1,100):
    k.append(i)
kk=[]
for i in range(1,100):
    kk.append(k)

standard=dict(zip(k,kk))#标准区域字典

xx=[]
for i in range(1,100):
    no=[x for x in standard[i] if x not in c[i]] #lamda函数的使用 提炼出没有在标准区域字典里的值
    xx.append(no)#缺失值组成的list 由于有 i做限定 所以是[[],[],[]]样list

#缺失字典
dddd=dict(zip(k,xx)) 
#with open ('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/renewnoarea.txt','w') as w:
    #w.write(str(dddd)) #write 函数写入必须为str 所以要将上面的dict转化为str
aa=[]
cc=[]
for i in range(1,100):
    for k in range(len(dddd[i])):
        aa.append(i)
    bb=dddd[i]
    cc=cc+bb
frame=pd.DataFrame(cc,index=aa)
frame.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/nodistance.csv')