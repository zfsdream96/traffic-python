# -*- coding: utf-8 -*-
"""
Created on Sat Dec 15 19:20:42 2018

第四版
第三版基础上修改

此一处修改 不允许内部合并的规则下 可能会出现九宫格全是自己人的情况 尝试中
如果全部为自己人 就加自己 内部增值


一天的数据划分中   600个最终分类的要求下  3500次更新后结束 add_self 次数为 8    249个合并区域
一周的数据划分中   600个最终分类的要求下  3497次更新后结束 没有add_self 的情况   233个合并区域

@author: Administrator
"""

import pandas as pd
import numpy as np

#全为1的64*64
data_1=pd.DataFrame(np.ones(64*64).reshape(64,64),
               columns=list(range(1,65)),
               index=list(range(64,0,-1)))


'''
part1
读取原始数据  1天的
每个格子加1
'''

data=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/geton20150419new2.csv')
data.drop(['Unnamed: 0'],axis=1,inplace=True)
data.index=list(range(64,0,-1))
data.columns=list(range(1,65))
data=data+data_1

'''
part2
读取原始数据  1周的
每个格子加1
'''

#data=pd.read_csv('C:/Users/Administrator/Desktop/task/64/geton_oneweek.csv')
#data.drop(['Unnamed: 0'],axis=1,inplace=True)
#data.index=list(range(64,0,-1))
#data.columns=list(range(1,65))
#data=data+data_1



#测试数据
#test=pd.DataFrame(np.random.randint(1,100,5*5).reshape(5,5),
#               columns=list(range(1,6)),
#               index=list(range(5,0,-1)))



#返回dataframe中最小的一个值，以及它的index和columns
def the_min(data):
    min=data.min().min()
    b=data.idxmin(axis=1)
    a=data.min(axis=1).idxmin(axis=1)
    index=a
    columns=b[a]
    return min,index,columns

#找出被合并的那个格子 是否被合并过，如果被合并过 返回合并的元素的list；没合并，则返回本身     
def find_if_merged(num,merge_dict):#输入：被合并的那个格子的4位编号/记录合并结果的字典    
    if merge_dict == {}:
        return int(num)
    else:
        id=0        
        for merge_item in merge_dict.values():            
            if num in merge_item:#  编号在这个小组织里           
                return merge_item
                id+=1
            else:#  编号不在这个小组织里
                pass
        if id == 0:
            return int(num)

#a={1:[101,202],2:[303,404]}  
#find_if_merged(304,a)      
#find_if_merged(404,a)    
            
#判断两个值是否已经被划分在同一个区块里
def already_merged(index_1,columns_1,index_2,columns_2,merge_dict):
    num_1=index_1+100*columns_1
    num_2=index_2+100*columns_2
    result_1=find_if_merged(num_1,merge_dict)
    result_2=find_if_merged(num_2,merge_dict)
    if result_1 == result_2:
        return 0  #已合并的返回 0
    else:
        return 1  #未合并的返回1


# 寻找某个值所在 九宫格里 其余八个数中最小的数的编号（1-8） 
def merge_to(data,x,y):    
    
    if x+1 in data.index:
        if y-1 in data.columns:
            if already_merged(x,y,x+1,y-1,merge_dict) == 1:                
                x1=data.loc[x+1,y-1]
            elif already_merged(x,y,x+1,y-1,merge_dict) == 0:
                x1=10**9            
        else:
            x1=10**9            
    else:
        x1=10**9
        
    if x+1 in data.index:
        if already_merged(x,y,x+1,y,merge_dict) == 1:
            x2=data.loc[x+1,y]
        elif already_merged(x,y,x+1,y,merge_dict) == 0: 
            x2=10**9
    else:
        x2=10**9
    
    if x+1 in data.index:
        if y+1 in data.columns:
            if already_merged(x,y,x+1,y+1,merge_dict) == 1:
                x3=data.loc[x+1,y+1]
            elif already_merged(x,y,x+1,y+1,merge_dict) == 0:
                x3=10**9
        else:
            x3=10**9
    else:
        x3=10**9
        
    if y-1 in data.columns:
        if already_merged(x,y,x,y-1,merge_dict) == 1:
            x4=data.loc[x,y-1]
        elif already_merged(x,y,x,y-1,merge_dict) == 0: 
            x4=10**9
    else:
        x4=10**9

    if y+1 in data.columns:
        if already_merged(x,y,x,y+1,merge_dict) == 1:
            x5=data.loc[x,y+1]
        elif already_merged(x,y,x,y+1,merge_dict) == 0: 
            x5=10**9        
    else:
        x5=10**9

    if x-1 in data.index:
        if y-1 in data.columns:
            if already_merged(x,y,x-1,y-1,merge_dict) == 1:
                x6=data.loc[x-1,y-1]
            elif already_merged(x,y,x-1,y-1,merge_dict) == 0: 
                x6=10**9    
        else:
            x6=10**9
    else:
        x6=10**9
        
    if x-1 in data.index:
        if already_merged(x,y,x-1,y,merge_dict) == 1:
            x7=data.loc[x-1,y]
        elif already_merged(x,y,x-1,y,merge_dict) == 0: 
            x7=10**9    
    else:
        x7=10**9
        
    if x-1 in data.index:
        if y+1 in data.columns:
            if already_merged(x,y,x-1,y+1,merge_dict) == 1:
                x8=data.loc[x-1,y+1]
            elif already_merged(x,y,x-1,y+1,merge_dict) == 0: 
                x8=10**9    
        else:
            x8=10**9
    else:
        x8=10**9
    
    list_8=[x1,x2,x3,x4,x5,x6,x7,x8]
    if min(list_8) < 10**9:
        return list_8.index(min(list_8))+1
    else:
        return 9
        
        



#对应格子
def index_to_chart(index,x,y):
    if index==1:       
        return x+1,y-1
    if index==2:        
        return x+1,y
    if index==3:        
        return x+1,y+1
    if index==4:
        return x,y-1
    if index==5:
        return x,y+1
    if index==6:
        return x-1,y-1
    if index==7:
        return x-1,y
    if index==8:
        return x-1,y+1    
    if index==9:
        print('add_self',x,y)
        return x,y
        
    


          
 
#定义函数 通过字典的value 返回k
def get_key (dict, value):
    return [k for k, v in dict.items() if v == value]   
    
#更新DATAFRAME    
def update(data,merge_dict,time): # time : update的次数 
    a=the_min(data)[1]#a是最小值的行号
    b=the_min(data)[2]#b是最小值的列号
    c=merge_to(data,a,b)#c是最小值合并到周围的格子的序号（1-8） 9即本身 报错一次
    d=index_to_chart(c,a,b)[0]#d是被合并值的行号
    e=index_to_chart(c,a,b)[1]#e是被合并值的列号
    value=data.loc[a,b]+data.loc[d,e]
    f=a+b*100 #f是最小值的4位编号
    g=d+e*100 #g是最小值合并的格子的4位编号
    h=find_if_merged(g,merge_dict) #h是被合并值是否被合并过的结果 ：值或者列表 
    i=find_if_merged(f,merge_dict) #i是最小值是否被合并过的结果 ：值或者列表 
    
    if type(h) is list: #根据i和h的类型 进行更新计数值和合并列表操作       
        for item in h:
            index=item%100
            columns=item//100
            data.loc[index,columns]=value
        if type(i) is int:
            data.loc[a,b]=value            
            old_key=get_key(merge_dict,h)[0]        
            new_list=h
            new_list.append(f) 
            new_list=list(set(new_list))
            merge_dict[time]=new_list #加入新的分组
            merge_dict.pop(old_key) #删去旧的分组
        elif type(i) is list:
            for item in i:
                index=item%100
                columns=item//100
                data.loc[index,columns]=value
            old_key_1=get_key(merge_dict,h)[0]
            old_key_2=get_key(merge_dict,i)[0] 
            new_list=h+i
            new_list=list(set(new_list))
            merge_dict[time]=new_list #加入新的分组
            merge_dict.pop(old_key_1) #删去旧的分组
            if old_key_2 != old_key_1:
                merge_dict.pop(old_key_2) #删去旧的分组                                            
    elif type(h) is int:
        if type(i) is int:
            data.loc[a,b]=value
            data.loc[d,e]=value       
            merge_dict[time]=[f,g]
        elif type(i) is list:
            data.loc[d,e]=value
            for item in i:
                index=item%100
                columns=item//100
                data.loc[index,columns]=value
            old_key=get_key(merge_dict,i)[0]        
            new_list=i
            new_list.append(g) 
            new_list=list(set(new_list))
            merge_dict[time]=new_list #加入新的分组
            merge_dict.pop(old_key) #删去旧的分组
        
            
            
            
            

      
#定义函数 求merge_dict 的 key的数量

def count_key(dict):
    count=0
    for key in dict.keys(): 
        count += 1 
    return count

#定义函数 求merge_dict 的value_item的数量
def count_value_item(dict):
    count=0
    if dict == {}:
        return count
    else:
        for LIST in dict.values():
            length=len(LIST)
            count += length
    return count
        
'''
测试集 结果展示


merge_dict={}
print(test)
for time in list(range(1,26)):
    count_1=count_key(merge_dict)  
    count_2=count_value_item(merge_dict)      
    new_count=5*5-count_2+count_1
    if new_count>10: #这里的数字为最终 小团队+个体的总个数
        update(test,merge_dict,time) 
        print('---------------------------------------------')
        print('第'+'%d'%time+'次更新:')
        print(test)
        print(merge_dict)  
'''      
        
#区域划分 主函数
#存储合并的格子编号 
#print('原始数据:')
#print(data)

merge_dict={}

for time in list(range(1,10000)):
    count_1=count_key(merge_dict)  
    count_2=count_value_item(merge_dict)      
    new_count=64*64-count_2+count_1
    if new_count>104:#改这里的参数就可以定义范围多大
        update(data,merge_dict,time) 
        print('---------------------------------------------')
        print('第'+'%d'%time+'次更新:')
    else:
        break
#        print(data)
#print(merge_dict)
        

'''
字典的存储和读取
'''
#保存

f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/100_dict3.txt','w')
f.write(str(merge_dict))
f.close()
'''
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/200_dict.txt','w')
f.write(str(merge_dict))
f.close()
'''
#读取
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/100_dict3.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()
'''
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/200_dict.txt','r')
a = f.read()
merge_dict = eval(a)
f.close()
'''
#字典 给键重新赋值
merge_dict
new_dict={}
i=1
for k,v in merge_dict.items():
    new_dict[i]=merge_dict[k]
    i+=1
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/new_100_dict3.txt','w')
f.write(str(new_dict))
f.close()

'''
merge_dict
new_dict={}
i=1
for k,v in merge_dict.items():
    new_dict[i]=merge_dict[k]
    i+=1
f = open('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new_200_dict.txt','w')
f.write(str(new_dict))
f.close()    
'''