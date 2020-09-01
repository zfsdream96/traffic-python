# -*- coding: utf-8 -*-
"""
Created on Fri Aug  7 14:52:09 2020

@author: zfsdr
"""
import numpy as np
import pandas as pd

f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/new_100_dict.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

data=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/usetotest.csv',encoding='ANSI')
#根据字典找到矩形范围
def find_out_rectangle(key):
    d=[]
    dd=[]
    a=merge_dict[key]
    for i in a:
        if len(str(i))==4:
            qianliangwei=int(str(i)[0]+str(i)[1])
            houliangwei=int(str(i)[2]+str(i)[3])
        else:
            qianliangwei=int(str(i)[0])
            houliangwei=int(str(i)[1]+str(i)[2])
        d.append(qianliangwei)
        dd.append(houliangwei)
    h1=max(d)
    h2=min(d)
    w1=max(dd)
    w2=min(dd)
    return h1,h2,w1,w2   

#a,b,c,d=find_out_rectangle(3)


#生成矩形范围的所有点坐标
def generate_new_rectangle(a,b,c,d):
    key=[]
    if a==b:
        height=list(range(a-1,a+2))
    else:
        height=list(range(b,a+1))
    if c==d:
        width=list(range(c-1,c+1))
    else:
        width=list(range(d,c+1))
        
#核心重点 用两个for循环即可遍历该区域所有坐标点！！！
    for x in height:
        for y in width:
            keypoint=int(str(x)+str(y))
            key.append(keypoint)
    return np.array(key)
           
#area=generate_new_rectangle(a,b,c,d)

#用字典定位其他区域对应到字典具体是哪个区域
def find_area(area):
    d=[]
    for i in range(1,100):
        if len(area[np.in1d(area,[merge_dict[i]])])!=0:
            d.append(i)
        else:
            pass
    return d
#abcd=find_area(area)
    
#输出这100个范围的可替代范围到字典
dic=[]
mapping={}
#把三个function连在一起
for i in range(1,100):
    a,b,c,d=find_out_rectangle(i)
    area=generate_new_rectangle(a,b,c,d)
    abcd=find_area(area)
    dic.append(abcd)

#输出成字典的标准写法
for z,x in enumerate(dic):
    mapping[z+1]=x
mapp=str(mapping)
with open ('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/writetest.txt','w') as w:
    w.write(mapp) #write 函数写入必须为str 所以要将上面的dict转化为str

    






















    
    
    
    
    
'''    
    if a==b:
            a_1=a+1
            a_2=a-1
    else:
        for i in range(a-b):
            b=b+1
            bb.append(b)
            if b==a:
                break
            

'''