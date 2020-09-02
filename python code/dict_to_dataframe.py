# -*- coding: utf-8 -*-
"""
Created on Tue Dec 11 10:01:35 2018
将oracle查询出的计数值放进64*64的dataframe里
一天一个 64*64 dataframe
一周
@author: Admin
"""
import pandas as pd
import numpy as np





#读取数据，给每个格子赋值
geton=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/newarea.csv')
geton.drop(['Unnamed: 0'],axis=1,inplace=True)
geton['Lng_id']=geton['GETON']//100
geton['Lat_id']=geton['GETON']%100

def get_geton_time(time):
    geton_time=geton[geton['TIME']==time]
    geton_time=geton_time.reset_index(drop=True)
    #创建 64*64 的dataframe
    data=pd.DataFrame(np.zeros(64*64).reshape((64,64)),
                  index=[list(range(64,0,-1))],
                  columns=[list(range(1,65))])
    for i in list(range(len(geton_time))):
        lat_id=-geton_time.loc[i,'Lat_id'] 
        lng_id=geton_time.loc[i,'Lng_id'] - 1
        data.iloc[lat_id,lng_id]=geton_time.loc[i,'COUNT']
    #return data
    data.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/geton%dnew2.csv' %time)

#生成一周的原始上车数据表格
list_day=[20150419] 
for day in list_day:    
    get_geton_time(day)





