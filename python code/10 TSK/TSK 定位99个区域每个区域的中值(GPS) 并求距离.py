# -*- coding: utf-8 -*-
"""
Created on Sun Aug  9 23:21:58 2020

@author: zfsdr
目标：
    直接用gps距离替代放大区域也无法找到的距离信息 作为最后的补充文件
思路：
    1. 取这些缺值对组成的矩形中心gps位置
    2. 用gps距离函数求两个区域的距离


"""

import math
#打开字典文件
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition2/new_100_dict.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()


#定义位置函数，找到每个区域四个顶点坐标
def find_out_rectangle(key):
    d=[]
    dd=[]
    a=merge_dict[key]
    for i in a:
        qianliangwei=i//100
        houliangwei=i%100
        #if len(str(i))==4:
          #  qianliangwei=int(str(i)[0]+str(i)[1])
          #  houliangwei=int(str(i)[2]+str(i)[3])
       # else:
        #    qianliangwei=int(str(i)[0])
        #    houliangwei=int(str(i)[1]+str(i)[2])
        d.append(qianliangwei)
        dd.append(houliangwei)
    h1=max(d)
    h2=min(d)
    w1=max(dd)
    w2=min(dd)
    return h1,h2,w1,w2

#找到每个区域的中值
def medium(a,b,c,d):
    if a==b:
        height=a
        width=(c+d)/2
    else:
        height=(a+b)/2
        width=(c+d)/2
    return height*0.00431198+103.932078,width*0.004216141+30.543160

#生成如 ['区域':[104,39]]的区域对应gps值的字典文件
cc=[]
for i in range(1,100):
    a,b,c,d=find_out_rectangle(i)
    hh,ww=medium(a,b,c,d)
    c=[hh,ww]
    cc.append(c)

dic=dict(zip(range(1,100),cc))#位置字典

#GPS位置转距离函数
def distance_of_stations(point1, point2):
    long1, lat1 = point1
    long2, lat2 = point2
    delta_long = math.radians(long2 - long1)
    delta_lat  = math.radians(lat2 - lat1)
    s = 2 * math.asin(math.sqrt(math.pow(math.sin(delta_lat / 2), 2) + math.cos(math.radians(lat1)) * math.cos(math.radians(lat2)) * math.pow(math.sin(delta_long / 2), 2)))
    s = s * 6378.2
    
    return s
sn = distance_of_stations(dic[5], dic[88])
print(sn)
#a,b,c,d=find_out_rectangle(88)
#hh,ww=medium(a,b,c,d)
#print(hh,ww)