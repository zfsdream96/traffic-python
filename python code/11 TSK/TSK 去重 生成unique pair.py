# -*- coding: utf-8 -*-
"""
Created on Sun Aug  9 23:17:34 2020

@author: zfsdr
目标：
    已有了所有对的距离信息，现在合并所有对并求对对之间的平均值 生成绝对对表格
    
思路：
    1. 用data.drop函数去除已经存在的行 具体方法如下




"""

import pandas as pd
#1 读取文件 这个文件来源有两个 一个是count>4的标准文件，一个是方法区域以后生成的文件
#这个文件务必要用原始文件的rehash hash比较一下 用vlookup筛选出有可能有对的 复制到新的csv 不然下面这个for循环会报错
#！！！最好把A-A类字段先行剔除移动至pair对 sheet 不然最后一个循环输出结果需要二次比较
#最后记得用生成文件的hash+rehash来比较一下 缺少哪些对 一般是 A-A这种
#文件格式columns要是 O,D,result,hash,rehash (hash = 1000*O+D, rehash = 1000*D+O)
data=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/new_result_use for python2.csv')

bb=[]
cc=[]
dd=[]
ee=[]
ff=[]
gg=[]
hash=[]
rehash=[]

#2 定位对应对所在位置 找出对应对距离 生成columns 为 A B distance(A-B) distance(B-A) hash rehash
for i in range(len(data)):
    #.tolist是将df格式转换为list（这里面有可能是list,有可能是int，print出来看看情况）
    a=data[data.rehash==data.loc[i,'hash']].index.tolist() #用这个逻辑确定对应对index是多少 也就是定位
    b=data.loc[a[0],'O'].tolist() #pair对的O
    c=data.loc[a[0],'D'].tolist() #pair对的D
    d=data.loc[a[0],'result'].tolist()#pair对的distance
    e=data.loc[i,'O'].tolist()
    f=data.loc[i,'D'].tolist()
    g=data.loc[i,'result'].tolist()
    dd.append(d)#原始对distance
    ee.append(e)#原始O
    ff.append(f)#原始D
    gg.append(g)#反对对应的distance
    hash.append(e*1000+f)
    rehash.append(b*1000+c)
    
#根据字典生成df
dic={'O1':ee,'D1':ff,'dis1':dd,'dis2':gg,'hash':hash,'rehash':rehash}
frame=pd.DataFrame(dic)              


#剔除所有重复的值 注意！ A-A这种值也会剔除 所以需要用hash值再去原有文件中比对一下 缺少了那些值
for i in range(len(frame)):
    try:#用try跳过报错的字段 这里报错一般是因为A-A类字段造成 可以在之前就剔除 
        frame=frame.drop(index=frame[frame.rehash == frame.loc[i,'hash']].index.tolist()[0])#用df.drop法 drop掉有重复值的行 用index做引导
    except:
        continue
frame.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/cccc.csv')

'''
for i in range(88):
    if pd.Series(data.rehash == data.loc[i,'hash']).any(): #这是一种 判断df生成的bool里面是不是有 false or ture 左边是用法
        print(pd.Series(data.rehash == data.loc[i,'hash']).any())
        #data=data.drop(index=data[data.rehash == data.loc[i,'hash']].index.tolist()[0])
    else:
        print(i)
'''


