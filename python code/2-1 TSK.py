# -*- coding: utf-8 -*-
"""
Created on Tue Aug  4 18:53:33 2020

@author: zfs

区域划分 时间划分 最终版 最速版文件

知识点：inis函数 apply用法

应用范围：对一堆数字进行分类划分 如成绩划分 分类数据分析 时间段划分 
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
data3['data']=data3['日期2'].apply(time2sec)

#将不同时间对应到相应period中
for i in range(1,145):
    q=data3['data'].isin(zhou_dict[i]) #应用了isin函数 非常关键
    data3.loc[q,'period']=[i]
    print(i) #确定for循环进行的位置

#将不同上车下车点编号对应到99个区域中去
for i in range(1,100):
    merge_dict = eval(a)
    k=data3['上车点编号'].isin(merge_dict[i])
    l=data3['下车点编号'].isin(merge_dict[i])
    data3.loc[k,'O']=[i]
    data3.loc[l,'D']=[i]
    #print(i) #确定for循环进行的位置

#输出到新的csv文件
end = time.perf_counter()
print('Running time: %s Seconds'%(end-start))

data3.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/applytest.csv',encoding='ANSI')

