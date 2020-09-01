# -*- coding: utf-8 -*-
"""
Created on Wed Aug 26 20:13:10 2020

@author: zfsdr
"""
import pandas as pd
import numpy as np
data3=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/扩大机场后的全部数据py1111.csv',encoding='ANSI')

aaabbbb11=data3.groupby("O").agg(np.sum)
aaabbbb11.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/current_demand4.csv',encoding='ANSI')