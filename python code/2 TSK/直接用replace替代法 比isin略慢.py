# -*- coding: utf-8 -*-
"""
Created on Sun Aug 30 21:40:36 2020

@author: zfsdr
"""

import pandas as pd
import time
from datetime import datetime
start = time.perf_counter()


#打开99网格划分字典
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/new_100_dict21111.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

#打开144个period定义字典
g = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/zhou_dict.txt','r')
b = g.read()
zhou_dict = eval(b)
g.close()


#导入文件
data3=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/全部车带时间new.csv',encoding='ANSI')

#定义标准时间转化成秒的函数
def time2sec(y):
    d=datetime.strptime(str(y), '%H:%M:%S')-datetime.strptime('00:00:00','%H:%M:%S')
    k=int(d.seconds/60)
    return k 

#apply上面的函数将新生成的秒数导入到新的列
data3['data']=data3['日期2'].apply(time2sec)

#将不同时间对应到相应period中
for key,value in zhou_dict.items():
    data3['data'].replace(value,key,inplace=True)
    print(key)
    
    
for key,value in merge_dict.items():
    data3['上车点编号'].replace(value,key,inplace=True)
    data3['下车点编号'].replace(value,key,inplace=True)
'''
for i in range(1,145):
    q=data3['data'].isin(zhou_dict[i]) #应用了isin函数 非常关键
    data3.loc[q,'period']=[i]
    print(i) #确定for循环进行的位置

#将不同上车下车点编号对应到99个区域中去
for i in range(1,101):
    merge_dict = eval(a)
    k=data3['上车点编号'].isin(merge_dict[i])
    l=data3['下车点编号'].isin(merge_dict[i])
    data3.loc[k,'O']=[i]
    data3.loc[l,'D']=[i]
    #print(i) #确定for循环进行的位置
'''
#输出到新的csv文件
end = time.perf_counter()
print('Running time: %s Seconds'%(end-start))

data3.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/allvehicle.csv',encoding='ANSI')

