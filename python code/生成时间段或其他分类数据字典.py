# -*- coding: utf-8 -*-
"""
Created on Wed Aug  5 22:01:01 2020

@author: zfsdr

目的：生成诸如 1:[1,2,3,4,5],2:[],3:[] 等差数列排列的字典
应用：进行分类数据分析时 可用该文件生成对应字典文件 然后结合 isin的搜索对应方法 快速进行匹配
"""

#生成period字典的文件

import pandas as pd

def generate(e,c,n,f=1):#e为[]起始值，c-1为[]终值（当f为1时则为[]长度），n为字典组数，f为[]距离
    b=[]
    d=[]
    mapping={}
    #确定字典[]内的值 该值为等差数列
    for i in range(n):
        b=list(range(e,c,f)) #将range转化成list
        d.append(b)#生成一个[[],[],[]]样list
        g=c-e
        e=c
        c=c+g
        
    # 确定字典的索引， 将list生成字典 用enumerate函数 这样仅限于生成 按0 1 2 3 这样顺序的索引
    for z,x in enumerate(d): #z是索引 x是索引对应的list中的值
        mapping[z+1]=x #将[[],[],[],[]]样矩阵生成字典
    return mapping

a=str(generate(1,11,144,1))

#将生成的文件写入txt文件中 使用with open打开并用'w'表示写入 即可写入 这是python最常规的写入方法
with open ('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/writetest.txt','w') as w:
    w.write(a) #write 函数写入必须为str 所以要将上面的dict转化为str


'''
a=generate(144)
mapping={}
for i,v in enumerate(a):
    mapping[i+1]=v

mapping.to_txt('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/ttt.txt')
'''