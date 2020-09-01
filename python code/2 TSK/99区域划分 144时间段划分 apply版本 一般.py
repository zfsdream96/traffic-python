# -*- coding: utf-8 -*-
"""
Created on Wed Aug  5 16:00:26 2020

@author: zfsdr
"""

import pandas as pd
import time
from datetime import datetime
start = time.perf_counter()

#打开99网格划分字典
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/new_100_dict.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

#打开144个period定义字典
g = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/zhou_dict.txt','r')
b = g.read()
zhou_dict = eval(b)
g.close()

#导入文件
data3=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/200 cars-vehiclenumber-date-OD-mile-amount-time-sql output.csv',encoding='ANSI')

#定义标准时间转化成秒的函数
def time2sec(y):
    d=datetime.strptime(str(y), '%H:%M:%S')-datetime.strptime('00:00:00','%H:%M:%S')
    k=int(d.seconds/60)
    return k 

#apply上面的函数将新生成的秒数导入到新的列
data3['data']=data3['日期2'].map(time2sec)#可以替换成map


def new_id(num):
    for k,v in merge_dict.items():
        if num in v: 
            return k
def time_id(num):
        id=0        
        for k,v in zhou_dict.items():            
            if num in v:#  编号在这个小组织里           
                return k

data3['时间']=data3['data'].map(time_id)#可以替换成map
data3['分类']=data3['上车点编号'].map(new_id)#可以替换成map
data3['分类2']=data3['下车点编号'].map(new_id)#可以替换成map
end = time.perf_counter()
print('Running time: %s Seconds'%(end-start))

data3.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/applytime.csv',encoding='ANSI')
