# -*- coding: utf-8 -*-
"""
Created on Thu Jul 16 13:48:41 2020

@author: zfs


区域划分 时间划分 第一版 最慢版 可读性强 for循环实现

知识点：dict函数

应用范围：简单的数据分类 用字典的方式

"""


import pandas as pd
from datetime import datetime
import time

start = time.perf_counter()
#区域划分字典
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/new_100_dict.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()
'''


#时间划分字典
g = open('C:/Users/34994/Desktop/Dick test/zhou_dict.txt','r')
b = g.read()
zhou_dict = eval(b)
g.close()
'''
#文件读取
data3=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/test.csv',encoding='ANSI')


#定义上下车点读取字典规则
def new_id(num,merge_dict):#输入：上车/下车点编号  区域合并字典    
        id=0        
        for k,v in merge_dict.items():            
            if num in v:#  编号在这个小组织里           
                return k
                id+=1
            else:#  编号不在这个小组织里
                pass
        if id == 0:
            return int(num)                
           
        
#定义时间分类字典读取规则
def time_id(num,zhou_dict):
        id=0        
        for k,v in zhou_dict.items():            
            if num in v:#  编号在这个小组织里           
                return k
                id+=1
            else:#  编号不在这个小组织里
                pass
        if id == 0:
            return int(num)


'''给原始数据增加时间段'''
'''
for i in range(len(data3)):
    c=data3.loc[i,'日期2']
    d=datetime.strptime(str(c), '%H:%M:%S')-datetime.strptime('00:00:00','%H:%M:%S')
    k=int(d.seconds/60)
    data3.loc[i,'period']=time_id(k,zhou_dict)
'''
'''给原始数据增加上车点区域编号和下车点区域编号'''
for i in range(len(data3)):
    k=data3.loc[i,'上车点编号']
    data3.loc[i,'上车点区域编号']=new_id(k,merge_dict)
    
'''给原始数据增加上车点区域编号和下车点区域编号'''
for i in range(len(data3)):
    k=data3.loc[i,'下车点编号']
    data3.loc[i,'下车点区域编号']=new_id(k,merge_dict)
end = time.perf_counter()
print('Running time: %s Seconds'%(end-start))
#输出到新的csv文件   
data3.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/applytest.csv',encoding='ANSI')

