# -*- coding: utf-8 -*-
"""
Created on Sat Aug  8 22:50:12 2020

@author: zfa

操作对象 clean data的表 长如下样子
O D
1 20
1 23
1 28
1 30
2 34
2 36
3 22
3 44
...
99 12
目标：提炼出 {1:[20,23,28,30],2:[34,36]...}样的字典

核心思路：提取出第一列的值作为 unique的list 再根据第一列对应的值生成[[],[],[]]这样的list，最后用dict(zip(a,b))函数整合成字典

步骤：  1. 提取出所有 columns为O的值，生成一个包含所有独一无二O的list ---用 for 遍历这个dataframe，再 用list-set-list法 除去中间的重复值
        2. 根据O值生成[[],[],[]]---先用data.set_index()改索引为O，再用data.loc[].tolist生成list[],最后用append生成目标值[[],[],[]]
        3. 生成字典---用dict(zip(a,b))函数将两个list合并为一个dict
        4. 输出到 txt
        
重点！！！：这个是老师已经查过重的文件 所以可以这样操作 对于原始文件 不能这样直接得到缺失值字典
"""

import pandas as pd

#读取文件
data=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/nodistance.csv')


#1 提取出所有 columns name为O的值
di=[]
for i in range(len(data)):
    q=data.loc[i,'O']
    di.append(q)

# 2
data= data.set_index(data['O'])#改索引为O的值
b=[]
for i in list(set(di)):#set 去重复值再用list转换回来
    b.append(data.loc[i,'D'].tolist())#生成当索引为n时对应所有value的集合的list 注意 append就是list叠加，+就是拆开list去+
# 3    
c=dict(zip(list(set(di)),b))#生成字典

# 4
with open ('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/newnoarea.txt','w') as w:
    w.write(str(c)) #write 函数写入必须为str 所以要将上面的dict转化为str