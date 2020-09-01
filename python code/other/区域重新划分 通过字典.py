# -*- coding: utf-8 -*-
"""
Created on Thu Aug 27 21:30:39 2020

@author: zfsdr
"""

f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/new_100_dict21111.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()

lis=merge_dict[100]+merge_dict[19]
#print(lis)

xia100=[]
shang19=[]


for i in lis:
    x=i//100 
    y=i%100
    if y>11 and x<38:
        shang19.append(i)


xia100=list(set(lis)-set(shang19))


print(shang19)
print(xia100)

print(len(shang19),len(xia100),len(lis))
#print(len(lis),len(youxia11),len(youshang15),len(chuanda1))
def find_out_value(c):
    a=c
    for i in a:
        qianliangwei=i//100
        houliangwei=i%100
        print(qianliangwei*0.00431198+103.932078, houliangwei*0.0037921875+30.543160,sep=',')


#for i in range(1,101):
 #   find_out_value(i)
#find_out_value(youshang15)