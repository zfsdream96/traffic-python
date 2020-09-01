# -*- coding: utf-8 -*-
"""
Created on Wed Aug 26 20:31:35 2020

@author: zfsdr
"""
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/new_100_dict2111.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

for i in range(1,101):
    if 3340 in merge_dict[i]:
        print(i)
    else:
        continue