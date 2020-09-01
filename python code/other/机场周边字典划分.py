# -*- coding: utf-8 -*-
"""
Created on Wed Aug 26 22:09:33 2020

@author: zfsdr
"""

f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/new_100_dict2.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

lis=merge_dict[40]+merge_dict[1]+merge_dict[64]
lis.sort(reverse=False)
#print(lis)


jichang64=[]
chuanda1=[]
shangmian40=[]
for i in lis:
    x=i//100 
    y=i%100
    if x<10 and x>0 and y<19:
        jichang64.append(i)
    elif x>0 and y>18:
        shangmian40.append(i)
    elif x>9 and y<19:
        chuanda1.append(i)


def find_out_value(c):
    a=c
    for i in a:
        qianliangwei=i//100
        houliangwei=i%100
        print(qianliangwei*0.00431198+103.932078, houliangwei*0.0037921875+30.543160,sep=',')


#for i in range(1,101):
 #   find_out_value(i)
find_out_value(shangmian40)