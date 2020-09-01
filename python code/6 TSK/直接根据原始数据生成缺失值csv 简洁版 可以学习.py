# -*- coding: utf-8 -*-
"""
Created on Mon Aug 10 15:35:11 2020

@author: zfsdr
"""

import xlrd

book=xlrd.open_workbook('C:/Users/zfsdr/OneDrive - stu.scu.edu.cn/Desktop/new/result.xlsx')

sheet=book.sheet_by_name('查询1')

#建立理想情况下的表格，99*99条路径
x=[]
r=sheet.nrows
for i in range(1,100):
	for j in range(1,100):
		x.append([i,j])

		
#建立真实情况下的表格
y=[]
for i in range(r):
	y.append(sheet.row_values(i))
print(y)
#建立表格找出缺失的路线
notin=[]

for i in x:
		if i not in y:
			notin.append(i)
			
#print(notin)