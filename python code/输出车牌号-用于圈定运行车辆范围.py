# -*- coding: utf-8 -*-
"""
Created on Sat Aug  1 08:34:07 2020

@author: 34994
"""

import pandas as pd

data3=pd.read_csv('C:/Users/34994/Desktop/Dick test/车辆运营数排序.csv',encoding='ANSI')

for i in range(300,1300):
    k=data3.loc[i,'VEHICLENUM']
    print('or vehiclenum =','\'',k,'\'',sep='')
