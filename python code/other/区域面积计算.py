# -*- coding: utf-8 -*-
"""
Created on Thu Aug 27 16:50:07 2020

@author: zfsdr
"""
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/new_100_dict21111.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

for i in range(1,101):
    print(len(merge_dict[i]))