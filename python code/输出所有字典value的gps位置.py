

import math

f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/new_100_dict21111.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()


def find_out_value(key):
    a=merge_dict[key]
    ww=[]
    for i in a:
        qianliangwei=[(i//100)*0.00431198+103.932078]
        houliangwei=[(i%100)*0.0037921875+30.543160]
        hh=qianliangwei+houliangwei
        ww.append(hh)
    return ww


#for i in range(1,101):
 #   find_out_value(i)
print(find_out_value(99))

#print(35*0.00431198+103.932078, 26*0.003441375+30.565612,sep=',')
#print(33*0.00431198+103.932078, 38*0.003441375+30.565612,sep=',')
def length(key):
    a=len(merge_dict[key])
    return a
'''
for i in range(1,101):
    print(i,length(i))
'''
