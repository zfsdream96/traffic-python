# -*- coding: utf-8 -*-
"""
Created on Fri Aug 28 16:07:59 2020

@author: zfsdr
"""

import pandas as pd
import numpy as np
data3=pd.read_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/gas.csv',encoding='ANSI')

aaabbbb11=data3.groupby("O").agg(np.sum)
aaabbbb11.to_csv('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/changeposition3/final/gascount.csv',encoding='ANSI')