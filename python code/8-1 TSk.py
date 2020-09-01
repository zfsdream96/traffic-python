# -*- coding: utf-8 -*-
"""
Created on Fri Aug  7 14:52:09 2020

@author: zfsdr
目标：用缺失位置附近的位置代替缺值，找到缺失值临近的所有区域

思路：
    1. 将上下车点编号拆分成 30 26 样字段，因为上下车点编号是由GPS左边转化过来的，前两位代表 维度 后两位代表经度
    2. 根据找到拆分字段的区间 生成该区间的矩形
    3. 查找落入该区间的所有区域，生成替换文件字典 具体操作见代码



"""
import numpy as np
import pandas as pd

f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/Dick test/new_100_dict.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

#根据字典找到矩形范围
def find_out_rectangle(key):
    d=[]
    dd=[]
    a=merge_dict[key]
    for i in a:
    #因为有可能存在902这种值 所以要做一个if判断，判断是否小于3位数
        qianliangwei=i//100
        houliangwei=i%100
        d.append(qianliangwei)
        dd.append(houliangwei)
    h1=max(d)
    h2=min(d)
    w1=max(dd)
    w2=min(dd)
    return h1,h2,w1,w2 #分别是矩形的四个顶点坐标   

#a,b,c,d=find_out_rectangle(3) #just test


#生成矩形范围的所有点坐标
def generate_new_rectangle(a,b,c,d):
    key=[]
    if a==b:
        height=list(range(a-1,a+2))#这里面的1 2 进行改变就是改变范围 但是要注意 有的a继续减就会落入负值 以后用if语句进行优化
    else:
        height=list(range(b,a+1))
    if c==d:
        width=list(range(c,c+2))
    else:
        width=list(range(d,c+1))
        
#核心重点 用两个for循环即可遍历该区域所有坐标点！！！
    for x in height:
        for y in width:
            keypoint=int(str(x)+str(y))
            key.append(keypoint)
    return np.array(key)
           
#area=generate_new_rectangle(a,b,c,d)

#用字典定位其他区域对应到字典具体是哪个区域 也就是 找到落入该矩形的有哪些区域可用来替代
def find_area(area):
    d=[]
    for i in range(1,100):
        if len(area[np.in1d(area,[merge_dict[i]])])!=0:
            d.append(i)
        else:
            pass
    return d
#abcd=find_area(area)
    
#输出这99个范围的可替代范围到字典 如{1:[2,3,4,5,6],2:[3,4,5,9,10],...,99:[23,43]}代表 1可替代区域有 2 3 4 5 6 （这里是可以变的根据我们算选取的范围大小而改变）
dic=[]
mapping={}

#把三个function连在一起
for i in range(1,100):
    a,b,c,d=find_out_rectangle(i)
    area=generate_new_rectangle(a,b,c,d)
    abcd=find_area(area)
    dic.append(abcd)

#生成如 {1:[23,34,45,56,67],2:[]}样字典 key代表的是区域值，value代表的是放大值
for z,x in enumerate(dic):#这是一种比较神奇的生成字典文件的方法 根据list数 作为字典的key值 list内部值作为 字典的value 如[[1,2,3,4],[2,3,5,8]]这样生成的字典就是{1:[1,2,3,4],2:[2,3,5,8]}
    mapping[z+1]=x
mapp=str(mapping)

#写入字典
with open ('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/area8.txt','w') as w:
    w.write(mapp) #write 函数写入必须为str 所以要将上面的dict转化为str

    






















    
    
    
    
