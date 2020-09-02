'''
Author: your name
Date: 2020-08-28 15:57:19
LastEditTime: 2020-09-01 23:03:45
LastEditors: your name
Description: In User Settings Edit
FilePath: \finalc:\Users\zfsdr\OneDrive - stu.scu.edu.cn\Desktop\Dick test\路网规划 2020.8.11\program\python code\2 TSK\区域需求查询.py
'''
# -*- coding: utf-8 -*-
"""
Created on Wed Aug 26 20:13:10 2020

@author: zfsdr
"""
import pandas as pd
import numpy as np
data3=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/扩大机场后的全部数据py1111.csv',encoding='ANSI')

a=data3.groupby("O").agg(np.sum)
a.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/current_demand4.csv',encoding='ANSI')